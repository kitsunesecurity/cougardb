require 'selenium-webdriver'
require 'watir'
require 'Date'
require 'watir-scroll'

@browser = Watir::Browser.new
@browser.goto("https://en.gleeden.com/")
# @browser.window.maximize

def fast_pass_popups
  if @browser.div(class: 'qtip-content').present?
    sleep 1
    @browser.div(class: 'qtip-modal-close').span.click
    sleep 2
    @browser.back
  end

  if @browser.a(class: 'icon-close').present?
    byebug
    @browser.a(class: 'icon-close').click
     sleep 2
  end

end

def check_popups
  fast_pass_popups
end

def get_relations_personality
  @browser.uls(class: ['pi-list', 'clearfix']).each{|ul|
    if ul.preceding_sibling.text == "Relationship sought"
      ul.lis.each{|li|
        if li.text == "Short term"
          @user.update(short_term: 'true')
          p li.text
        end
        if li.text == "Anything exciting"
          @user.update(anything_exciting: 'true')
          p li.text
        end
        if li.text == "Long term"
          @user.update(long_term: 'true')
          p li.text
        end
        if li.text == "Open to anything"
          @user.update(open_anything: 'true')
          p li.text
        end
        if li.text == "Virtual"
          @user.update(virtual: 'true')
          p li.text
        end
        if li.text == "Undecided"
          @user.update(undecided: 'true')
          p li.text
        end
      }
    end
    if ul.preceding_sibling.text == "Personality"
      ul.lis.each{|li|
        if li.text == "Active / Lively"
          @user.update(active: 'true')
          p li.text
        end
        if li.text == "Modest"
          @user.update(modest: 'true')
          p li.text
        end
        if li.text == "Sensitive"
          @user.update(sensitive: 'true')
          p li.text
        end
        if li.text == "Fun"
          @user.update(fun: 'true')
          p li.text
        end
        if li.text == "Moody"
          @user.update(moody: 'true')
          p li.text
        end
        if li.text == "Shy"
          @user.update(shy: 'true')
          p li.text
        end
        if li.text == "Generous"
          @user.update(generous: 'true')
          p li.text
        end
        if li.text == "Relaxed / Casual"
          @user.update(relaxed: 'true')
          p li.text
        end
        if li.text == "Sociable"
          @user.update(sociable: 'true')
          p li.text
        end
        ###
        if li.text == "Independent"
          @user.update(independent: 'true')
          p li.text
        end
        if li.text == "Mature"
          @user.update(mature: 'true')
          p li.text
        end
        if li.text == "Outgoing / Talkative"
          @user.update(outgoing: 'true')
          p li.text
        end
        if li.text == "Self-confident"
          @user.update(self_confident: 'true')
          p li.text
        end
        if li.text == "cultivated"
          @user.update(cultivated: 'true')
          p li.text
        end
        if li.text == "reliable"
          @user.update(reliable: 'true')
          p li.text
        end
        if li.text == "Spiritual"
          @user.update(spiritual: 'true')
          p li.text
        end
        if li.text == "Imaginative"
          @user.update(imaginative: 'true')
          p li.text
        end
        if li.text == "Sophisticated / Classy"
          @user.update(sophisticated: 'true')
          p li.text
        end
      }
    end
  }
end

def get_sexual_preferences
  @browser.lis(class: 'clearfix').each{|li|
    if li.p.text == "Sexual preferences"
      li.ul.lis.each{|li|
        if li.text == "Anything goes"
          p li.text
          @user.update(anything_goes: "true")
        end
        if li.text == "Being dominated"
          p li.text
          @user.update(dominated: "true")
        end
        if li.text == "Dominating"
          p li.text
          @user.update(dominate: "true")
        end
        if li.text == "Conventional sex only"
          p li.text
          @user.update(normal: "true")
        end
        if li.text == "I'd rather not say, that's private"
          p li.text
          @user.update(secret: "true")
        end
        if li.text == "Threesome (or more)"
          p li.text
          @user.update(threesome: "true")
        end
        ######
        if li.text == "Being blind folded"
          p li.text
          @user.update(being_blinded: "true")
        end
        if li.text == "Willing to experiment"
          p li.text
          @user.update(willing_experiment: "true")
        end
        if li.text == "Costumes"
          p li.text
          @user.update(costume: "true")
        end
        if li.text == "Role playing"
          p li.text
          @user.update(role_playing: "true")
        end
        if li.text == "Using sex toys"
          p li.text
          @user.update(using_sex_toys: "true")
        end
        if li.text == "Sex in unusual places"
          p li.text
          @user.update(unusual_places: "true")
        end
        if li.text == "Being watched or filmed"
          p li.text
          @user.update(being_watched: "true")
        end
      }
    end
    if li.p.text == "Sports"
      li.ul.lis.each{|li|
        if li.text == "Aerobics"
          p li.text
          @user.update(aerobics: "true")
        end
        if li.text == "Golf"
          p li.text
          @user.update(golf: "true")
        end
        if li.text == "Martial arts"
          p li.text
          @user.update(martial_arts: "true")
        end
        if li.text == "Soccer / Football"
          p li.text
          @user.update(soccer: "true")
        end
        if li.text == "Walking / Hiking"
          p li.text
          @user.update(walking: "true")
        end
        if li.text == "Rugby or american football"
          p li.text
          @user.update(rugby: "true")
        end
        if li.text == "Swimming or diving"
          p li.text
          @user.update(swimming: "true")
        end
        if li.text == "Baseball"
          p li.text
          @user.update(baseball: "true")
        end
        if li.text == "Cycling"
          p li.text
          @user.update(cycling: "true")
        end
        if li.text == "Running / Cardio"
          p li.text
          @user.update(running: "true")
        end
        if li.text == "Tennis / Racquet sports"
          p li.text
          @user.update(tennis: "true")
        end
        if li.text == "Weights / Machines"
          p li.text
          @user.update(weight: "true")
        end
        if li.text == "Basketball"
          p li.text
          @user.update(basketball: "true")
        end
        if li.text == "Skiing / Snowboarding"
          p li.text
          @user.update(skiing: "true")
        end
        if li.text == "Volleyball"
          p li.text
          @user.update(volleyball: "true")
        end
        # if li.text == "Bowling"
        #   p li.text
        #   @user.update(bowling: "true")
        # end
      }
    end
    if li.p.text == "My hobbies"
      li.ul.lis.each{|li|
        if li.text == "Arts and crafts"
          p li.text
          @user.update(arts: "true")
        end
        if li.text == "Cooking / Baking"
          p li.text
          @user.update(cooking: "true")
        end
        if li.text == "Hiking"
          p li.text
          @user.update(hiking: "true")
        end
        if li.text == "Networking / Socialising"
          p li.text
          @user.update(networking: "true")
        end
        if li.text == "Video games"
          p li.text
          @user.update(video_games: "true")
        end
        if li.text == "Book or discussion clubs"
          p li.text
          @user.update(book: "true")
        end
        if li.text == "Dining out / Hosting diners"
          p li.text
          @user.update(dining_out: "true")
        end
        if li.text == "Movies / Cinema"
          p li.text
          @user.update(movies: "true")
        end
        if li.text == "Nightclubs / Dancing"
          p li.text
          @user.update(nightclubs: "true")
        end
        if li.text == "Religion / Spirituality"
          p li.text
          @user.update(religion: "true")
        end
        if li.text == "Charities / Organisations"
          p li.text
          @user.update(charity: "true")
        end
        if li.text == "Museums / Galleries"
          p li.text
          @user.update(museum: "true")
        end
        if li.text == "Shopping / Antiques"
          p li.text
          @user.update(shopping: "true")
        end
        if li.text == "Wine or food tasting"
          p li.text
          @user.update(wine: "true")
        end
        if li.text == "Coffee and conversation"
          p li.text
          @user.update(coffee: "true")
        end
        if li.text == "Gardening / Landscaping"
          p li.text
          @user.update(gardening: "true")
        end
        if li.text == "Pets / Animals"
          p li.text
          @user.update(pets: "true")
        end
      }
    end
  }
end


def get_perso_infos
  username = @browser.h1(class: 'main-title').text
  p username
  @user.update(username: username)
  if @browser.span(class: 'statut').present?
    description = @browser.span(class: 'statut').text
    p description
    @user.update(description: description)
  end
  @browser.uls(class: ['pi-labels', 'clearfix']).each{|ul|
    if ul.li.text == "City :"
      puts  ul.li.next_sibling.text
      @user.update(city: ul.li.next_sibling.text)
    end
    if ul.li.text == "Height :"
      puts  ul.li.next_sibling.text
      @user.update(height: ul.li.next_sibling.text.to_i)
    end
    if ul.li.text == "Age :"
      puts  ul.li.next_sibling.text
      @user.update(age: ul.li.next_sibling.text.to_i)
    end
    if ul.li.text == "Marital status :"
      puts  ul.li.next_sibling.text
      @user.update(marital_status: ul.li.next_sibling.text)
    end
    if ul.li.text == "Eyes :"
      puts  ul.li.next_sibling.text
      @user.update(eye_color: ul.li.next_sibling.text)
    end
    if ul.li.text == "Hair :"
      puts  ul.li.next_sibling.text
      @user.update(hair_color: ul.li.next_sibling.text)
    end
    if ul.li.text == "Smoker :"
      puts ul.li.next_sibling.text
      @user.update(smoker: ul.li.next_sibling.text)
    end
  }

end

def get_photos
  n_pics = @browser.imgs(class: "avatar-img").length
  arr_photos = []
  if n_pics.odd? && n_pics != 3
    @browser.imgs(class: "avatar-img")[0..((n_pics - 1)/2)].each{|pic|
      url =  pic.src
      url.slice!("_mini")
      puts url
      arr_photos << url
    }
  elsif n_pics == 3
     url = @browser.imgs(class: "avatar-img")[0].src
     url.slice!("_mini")
     puts url

    arr_photos <<  url
   else
    @browser.imgs(class: "avatar-img")[0..((n_pics)/2)].each{|pic|
      url = pic.src
      url.slice!("_mini")
      puts url
      arr_photos << url
    }
  end
  arr_photos = arr_photos.uniq
  @user.update(photos: arr_photos)
end

def get_infos
  @user = User.create()
  check_popups
  get_photos
  get_perso_infos
  get_sexual_preferences
  get_relations_personality
end

def go_back
  @browser.a(class: 'list-btn_back').click
end

def results_search
  begin
  retries ||= 0

  cards = @browser.divs(class: 'list_box')
  cards[0..cards.length-1].each do |card|
    p card.a.text
    if !User.where(username: card.a.text).exists?
      card.img.click!
      sleep 3
      get_infos
      go_back
      sleep 3
    end
  end
  puts "finished page"
  @browser.scroll.to :bottom
  sleep 2
  if @browser.url.include?("member")
    @browser.scroll.to :top
    go_back
  end
  page_number = @browser.a(class: ['list-page-num','active-page']).text.to_i
  if @browser.a(text: (page_number + 1).to_s , class: 'list-page-num').present?
    @browser.a(text: (page_number + 1).to_s , class: 'list-page-num').click
    results_search
  else
    @browser.scroll.to :top
  end
  rescue => e
    retry if (retries += 1) < 5
    print "#error: #{e}"
  end
end

def search
  sleep 2
  if @browser.div(class: 'qtip-content').present?
    sleep 1
    @browser.div(class: 'qtip-modal-close').span.click
    sleep 2
  end

  sleep 1
  @browser.span(class: 'icon-search').click

  sleep 3

  check_popups

  @browser.scroll.to :bottom

  #find country and select
  # @browser.divs(class:"box_d2_content")[-4].divs(class: "form-row")[0].button.click
  sleep 1
  # @browser.uls(class: "ui-multiselect-checkboxes")[14].lis[78].click

  #click anywhere
  @browser.divs(class:"box_d2_content")[-1].click

  #city
  @browser.input(:name => "ville").to_subtype.clear
  @browser.input(:name => "ville").send_keys "London"
  sleep 2


  #miles
  @browser.divs(class:"box_d2_content")[-4].divs(class: "form-row")[3].button.click
  sleep 4
  @browser.uls(class: "ui-multiselect-checkboxes")[15].lis[8].click


  @browser.checkbox(:name => 'book_public').set


  @browser.div(class: "box_d3_button").click
  sleep 3
  results_search
end

def login
  @browser.input(name: 'username').send_keys "bastonvintage"
  @browser.input(name: 'password').send_keys "Bergamo1!"
  @browser.div(class: 'large-display').click
  sleep 7
  search
end

login
login
login
login
