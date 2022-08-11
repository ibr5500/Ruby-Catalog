require './spec/spec_helper'

class App
  def initialize
    @books = []
    @authors = []
    @albums = []
    @games = []
    @genres = []
    @labels = []
  end

  def run
    add_author
    list_authors

  end

  def list_books
    @books.each do |book|
      puts "Publish_date: '#{book.publish_date}', Publisher: #{book.publisher}, State: #{book.cover_state}"
    end
  end

  def list_games
    @games.each do |game|
      puts "Publish_date: '#{game.publish_date}', Multiplayer: #{game.multiplayer}, Last played at: #{game.last_played_at}"
    end
  end

  def list_authors
    @authors.each do |author|
      puts "First name: '#{author.first_name}', Last name: '#{author.last_name}'"
    end
  end


  def create_book
    print 'Publish Date: [DD-MM-YYYY]'
    publish_date = gets.chomp

    print 'Publisher: '
    publisher = gets.chomp.capitalize.to_s

    print 'State: '
    state = gets.chomp.to_s

    book = Book.new(publish_date, publisher, state)
    @books.push(book)
    puts 'Book Created successfully'
    puts
  end

  def add_game()
    print 'Publish Date: [DD-MM-YYYY]'
    publish_date = gets.chomp

    print 'Multiplayer: Y/N '
    multiplayer = gets.chomp.capitalize.to_s
    case multiplayer
    when 'Y'
      multi = 'YES'
    when 'N'
      multi = 'NO'
    else
      puts 'Please add Y or N'
      multi = gets.chomp.capitalize.to_s
    end

    print 'Last Played at: [DD-MM-YYYY]'
    last_played_at = gets.chomp


    game = Game.new(publish_date, multi, last_played_at)
    @games.push(game)
    
    puts 'Game Created successfully'
    puts
  end

  def add_author()
    print 'First name: '
    first_name = gets.chomp.capitalize.to_s

    print 'Last name: '
    last_name = gets.chomp.capitalize.to_s

    author = Author.new(first_name, last_name)
    @authors.push(author)
    
    puts 'Author Created successfully'
    puts
  end


end
