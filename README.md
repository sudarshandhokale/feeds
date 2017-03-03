# Feeds

RSS Reader

This is simple RSS reader application used to:

	1. Add/Remove/Edit Feed URLS.
	2. List all feeds.
	3. Fetch latest posts from all feeds and diplay them in the most recent order.

## Prerequisites
		
	1. Ruby- 2.3.0
	2. Rails- 5.0.0
	3. Redis-server (sudo apt-get install redis-server)

## Installation

	1. Clone the project repo.
	2. Navigate to project folder
	3. Run the command

		$ bundle install

		$ rake db:migrate

	4. Execute the below commands:

		$ sudo chmod 777 run_service.sh

		$ ./run_services.sh


## License

Copyright (c) 2014 Sudarshan Dhokale

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.