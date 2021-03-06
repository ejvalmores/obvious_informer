# ObviousInformer

Just a simple gem that allows me to make some log messages really obvious to see while tailing logs.

## Installation

Add this line to your application's Gemfile:

    gem 'obvious_informer', :git => 'https://github.com/ejvalmores/obvious_informer.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install obvious_informer

## Usage

Just call 

    obvious_logger(message) 

to output: 

    -------------------- the_message -------------------- 

in the log file (will use Rails.logger.info).

Calling

    obvious_puts(message) 

will use *puts* to output message wrapped in '-'. Example: 

    -------------------- the_message --------------------


You can also set the marker to another char (instead of the defaul '-') by passing the :marker option. 
Example: 

    obvious_logger( 'this is a message', marker: '#' )

This will output: 

    #################### this is a message ######################

in the log file. 

