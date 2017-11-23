
<!-- <% if @post.errors.any? %>
		  <div id="error_explanation">
		    <h2>
		      <%= pluralize(@post.errors.count, "error") %>
		      prohibited this post from being saved:
		    </h2>
		 
		    <ul>
		    <% @post.errors.full_messages.each do |msg| %>
		      <li><%= msg %></li>
		    <% end %>
		    </ul>
		  </div>
		<% end %> -->



    <%= form_for @post do |f| %>
      <%=f.label :name, for: "Name"%>
      <%=f.text_field :name, id: "Name", name: "Name"%>
      <%=f.label :content%>
      <%=f.text_area :content, id: "Content", name: "Content"%>
      <%= f.collection_check_boxes :tag_ids, Tag.all, :id, :name_with_initial %>
      <%= f.submit %>
    <% end %>
