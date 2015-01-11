## A comma-separated value "[CSV](http://en.wikipedia.org/wiki/Comma-separated_values)"
- Sometimes it contains comments line start with a pound (#).
- Columns doesn't support a value contains a comma (,).

## [File](http://rubydoc.info/stdlib/core/File) class
- Reads files `File.read "Event_attendees.csv"`
- Reads line by line `File.readlins "Event_attendees.csv"`
- Checks of file exist `File.exist? "Event_attendees.csv"`


## String
- [String#split](http://rubydoc.info/stdlib/core/String#split-instance_method)
- By default it will break the string whenever it sees "" space. `line.split(" ")`
- Passing a parameter like "," would break the string apart along a comma "," character. `line.split(",")`

## Array 
- [each_with_index](http://rubydoc.info/stdlib/core/Enumerable#each_with_index-instance_method) `lines.each_wtih_index do |line, index|`

## Ruby [CSV](http://rubydoc.info/stdlib/csv) Library

#### Class Methods
   - `open( filename, options = Hash.new )`
	- This method opens an IO object, and wraps that with CSV. This is intended as the primary interface for writing a CSV file.

	- You must pass a filename and may optionally add a mode for Ruby’s open(). You may also pass an optional Hash containing any options ::new understands as the final argument.

	- This method works like Ruby’s open() call, in that it will pass a CSV object to a provided block and close it when the block terminates, or it will return the CSV object when no block is provided. (Note: This is different from the Ruby 1.8 CSV library which passed rows to the block. Use ::foreach for that behaviour.) 

	- _**Example**_	`contents = CSV.open "event_attendees.csv"`

#### Instance Methods
- `header_converters()`
	- Returns the current list of converters in effect for headers. See ::new for details. Built-in converters will be returned by name, while others will be returned as is.

	- _**Example**_	`contents = CSV.open "event_attendees.csv", header_converters: :symbol`	
	
- `headers()`
	- Returns nil if headers will not be used, true if they will but have not yet been read, or the actual headers after they have been read.

	- _**Example**_	`contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol`

## Issues
- When I run the code I get this error:

  `“/usr/local/Cellar/ruby/2.1.4/lib/ruby/2.1.0/csv.rb:995:in 'block' in: undefined method 'encode' for nil:NilClass (NoMethodError)”`

- I went on a hunt mission to find out why this is not working with me while I'm using internal API. This is an evidence that something wrong with my program. 

- The error I got is related to "header_converters: ()" method. It turns out that my "event_attendees.csv" file missing a space or a blank before first comma. Here is my initial file: ",RegDate,first_Name,last_Name,..." and here it is after " ,RegDate,first_Name,last_Name,...".

- Adding that space before first comma solved the issue. Also I found removing that comma and the blank completely is another solution "RegDate,first_Name,last_Name,..."
The blank gets read in as nil, and since nil can't be converted to a symbol, it blows up.