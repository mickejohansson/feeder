require 'sinatra'
require 'json'

get '/' do 
	"Hello World!"
end

get '/feeds' do
	content_type :json

	{:feeds => [
		{:name => 'Antonio Leiva', :url => 'http://antonioleiva.com/',
		 :posts => [
					{:title => 'Kotlin for Android (II): Create a new project', :url => 'http://antonioleiva.com/kotlin-android-create-project/', :read => false}, 
			        {:title => 'Kotlin for Android (I): Introduction', :url => 'http://antonioleiva.com/kotlin-for-android-introduction/', :read => true},
			        {:title => 'Add multiple resource folders to an Android App', :url => 'http://antonioleiva.com/android-multiple-resource-folders/', :read => true},
			        {:title => 'Materialize your App', :url => 'http://antonioleiva.com/materialize-app/', :read => true},
			        {:title => 'Material Design Everywhere: Using AppCompat 21', :url => 'http://antonioleiva.com/material-design-everywhere/', :read => true}
			      ]
		},
		{:name => 'THE UNITY BLOG', :url => 'http://blogs.unity3d.com/',
		 :posts => [
					{:title => 'THE SO VERY MANY GAMES OF GDC 2015', :url => 'http://blogs.unity3d.com/2015/03/24/the-so-very-many-games-of-gdc-2015/', :read => false}, 
			        {:title => 'AMSTERDAM HERE WE COME! CALL FOR SPEAKERS FOR UNITE EUROPE 2015', :url => 'http://blogs.unity3d.com/2015/03/19/amsterdam-here-we-come-call-for-speakers-for-unite-europe-2015/', :read => true},
			        {:title => 'HEY DEVELOPERS, YOU’RE AWESOME', :url => 'http://blogs.unity3d.com/2015/03/17/hey-developers-youre-awesome/', :read => false},
			        {:title => 'GETTING STARTED IN UNITY 5.0', :url => 'http://blogs.unity3d.com/2015/03/16/getting-started-in-unity-5-0/', :read => false},
			        {:title => 'WE’RE ANNOUNCING A NEW SECONDARY EDUCATION PROGRAM!', :url => 'http://blogs.unity3d.com/2015/03/05/were-announcing-a-new-secondary-education-program/', :read => false}
			      ]
		}
	]}.to_json
end

