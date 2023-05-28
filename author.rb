
class Author
    attr_reader :name

    def initialize(name)
        @name=name
        @articles=[]
    end

    def add_article(magazine,title)
        article=Article.new(self,magazine,title)
        @articles << article
        magazine.add_contributor(self)
    end

    def articles
        @articles
    end

    def magazines
        @articles.map(&:magazine).uniq
    end

    def topic_areas
        magazines.map(&:category).uniq
    end
end

author1=Author.new('John')
author2=Author.new('Johny')
puts author2