class BooksController < ApplicationController
	def index
	end

  def search
      query_list = ["コスメ", "口紅", "リラックマ", "クリスマス", "牛肉", "チョコレート"]
      books = Amazon::Ecs.item_search(
                             query_list[rand(6)],
                             search_index: 'All',
                             dataType: 'script',
                             response_group: 'ItemAttributes, Images',
                             country: 'jp'
      )

      @books = []
      books.items.each do |item|
        book = Book.new(
                       item.get('ItemAttributes/Title'),
                       item.get('LargeImage/URL'),
                       item.get('DetailPageURL')
        )
        @books << book

      end
  end
end
