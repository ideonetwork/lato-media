module LatoMedia

  class Inputs::Media::Cell < LatoCore::Cell

    view_paths << "#{LatoMedia::Engine.root}/app/cells"

    @@requested_args = [:name]

    @@default_args = {
      value: '',
      label: '',
      placeholder: '',
      help: '',
      class: 'md-12'
    }

    def initialize(args = {})
      @args = validate_args(
        args: args,
        requested_args: @@requested_args,
        default_args: @@default_args
      )

      set_conditions
    end

    def show
      render 'show.html'
    end

    private

    def set_conditions
      @show_label = !@args[:label].nil? && !@args[:label].blank?
      @show_help = !@args[:help].nil? && !@args[:help].blank?
    end

  end

end
