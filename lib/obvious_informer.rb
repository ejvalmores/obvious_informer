require "obvious_informer/version"

module ObviousInformer

  class << self
    @@options = {
                  :marker => '-'
                }

  end

  # Your code goes here...
  def obvious_logger(msg, opt = {})
    setup_options opt
    Rails.logger.info "#{ @border } #{msg} #{ @border }"
  end

  def obvious_puts( msg, opt = {} )
    setup_options opt
    puts "#{ @border } #{ msg } #{ @border }"
  end

  private

  def setup_options(opt)
    @options = @@options
    @options.merge! opt
    @border = @options[:marker] * 20
  end

end


if defined?( Rails::Railtie )
  class ObviousLoggerRailtie < Rails::Railtie
    initializer 'new_obvious_initializer' do

      ActiveSupport.on_load :action_controller do
        ActionController::Base.send :include, ObviousInformer
      end

      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, ObviousInformer
      end

      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send :include, ObviousInformer
      end

    end
  end
end
