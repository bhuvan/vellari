LOCAL_GEM_HOME=$(HOME)/rubygems

clean:
	rm -rf $(LOCAL_GEM_HOME) vendor

install_bundle:
	mkdir -p $(LOCAL_GEM_HOME)
	GEM_HOME=$(LOCAL_GEM_HOME) gem install bundler

install_test:
	$(LOCAL_GEM_HOME)/bin/bundle install

install: install_bundle install_test

test:
	$(LOCAL_GEM_HOME)/bin/bundle exec cucumber
