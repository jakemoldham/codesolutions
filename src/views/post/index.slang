/* div.row */
/*   div.col-sm-11 */
/*     h2 Posts */
/*   div.col-sm-1 */
/*     a.btn.btn-success.btn-xs href="/posts/new" New */
/* div.table-responsive */
/*   table.table.table-striped */
/*     thead */
/*       tr */
/*         th Title */
/*         th Author */
/*         th Body */
/*         th Spotlight */
/*         th Description */
/*         th Actions */
/*     tbody */
/*     - posts.each do |post| */
/*       tr */
/*         td = post.title */
/*         td = post.author */
/*         td = post.body */
/*         td = post.spotlight */
/*         td = post.description */
/*         td */
/*           span */
/*             a.btn.btn-primary.btn-xs href="/posts/#{ post.id }" read */
/*             a.btn.btn-success.btn-xs href="/posts/#{ post.id }/edit" edit */
/*             a.btn.btn-danger.btn-xs href="/posts/#{ post.id }?_method=delete" onclick="return confirm('Are you sure?');" delete */
/*  */
.index-nav
  h1 Oh snap, edit this slang.
  a href="/"
    .home-nav-btn.hidden-xs
      | HOME
.container
  .row
    .col-md-9.col-md-offset-1
      .fifty-margin-bot
      .row
        form action="/posts/update/#{post.id}" method="put"
          .col-md-12
            input.btn.btn-default.new-edit-btn type="submit" value="Send"
          .col-md-12
            input.post-input type="text" name="title" value="#{post.title}"
          .col-md-12
            input.post-input type="text" name="author" value="#{post.author}"
          .col-md-12
            input.post-input type="text" name="description" value="#{post.description}"
          .col-md-12.post-text-div
            textarea.post-text-area name="body"
              = post.body
.hundy-fity-margin-bot
