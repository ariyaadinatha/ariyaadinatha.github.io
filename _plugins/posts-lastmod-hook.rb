#!/usr/bin/env ruby
#
# Check for changed posts

# Posts live in the `security-notes` repo, checked out into `_posts/` by the
# deploy workflow, so git has to be run inside that nested repo rather than in
# this one -- from here the paths are gitignored and every lookup returns 0.
Jekyll::Hooks.register :posts, :post_init do |post|

  dir = File.dirname(post.path)
  file = File.basename(post.path)

  commit_num = `git -C "#{ dir }" rev-list --count HEAD -- "#{ file }"`

  if commit_num.to_i > 1
    lastmod_date = `git -C "#{ dir }" log -1 --pretty="%ad" --date=iso -- "#{ file }"`
    post.data['last_modified_at'] = lastmod_date
  end

end
