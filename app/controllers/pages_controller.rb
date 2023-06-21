class PagesController < ApplicationController
  def home
  end

  def about
    chart_data = User.all.map { |u| [u.name, u.views, u.posts.count] }
    @names = chart_data.map { |n| n[0] }
    @views = chart_data.map { |v| v[1] }
    @posts = chart_data.map { |p| p[2] }
  end
end
