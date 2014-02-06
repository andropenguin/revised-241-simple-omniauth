# The revised sample of #241 Simple OmniAuth

## Introduction
The way how omniauth is implemented is explained at #241 Simple Omniauth http://railscasts.com/episodes/241-simple-omniauth?language=en&view=asciicast. In the how to document, there is not a sample of application of which omniauth has not been implemented. So I implemented the blog system and implemented omnitauth as the how to document.

## The points of the revision of sample.
* When implementing create_with_omniauth in User class, I have to recoginize that request
.env[ominiauth.auth] does not have user_info but info. 
* I have to write helper method current_user in app/helpers/sessions_helper.rb and to include the file app/controllers/application_controller.rb.
* In the main page, the true word appears inittially. I do not konw the reason. :-)
