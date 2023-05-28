
class Magazine
 attr_reader :name, :category

 @@all=[]

 def self.all
    @@all
 end

 def initialize(name,category)
    @name=name
    @category=category
    @@all <<self
 end

 def self.find_by_name(name)
    @@all.find{|magazine| magazine.name==name}
 end

 def article_titles
    Article.all.select {|article| article.magazine==self}.map(&:title)
 end

 def contributing_authors
    @contributors.select{|author|auhtor.articles.count>2}
 end

 def add_contributor(author)
    @contributors<<author
 end
end

