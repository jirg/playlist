class EntriesController < InheritedResources::Base
  actions :new, :show, :index, :edit, :update
  before_filter :set_message, :only => [:update]

  def save_to_file(entry)
    playlist = 'playlist.txt'
    File.open(playlist, 'a+') do |f|
      f.puts "Song: #{@entry.song}  by  #{@entry.artist}  on the album #{@entry.album}"
    end
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      flash[:notice] = "Your song was added"
      save_to_file(@entry)
      redirect_to entries_path
    else
      flash[:error] = "Your song wasn't added. Please check all info and try agian."
      render :new
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:artist, :album, :song)
  end

  def set_message
    flash[:warning] = "Are you sure you want to overwrite this song information?"
  end
end
