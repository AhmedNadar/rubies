## A comma-separated value "[CSV](http://en.wikipedia.org/wiki/Comma-separated_values)"
- Sometimes it contains comments line start with a pound (#).
- Columns doesn't support a value contains a comma (,).

## [File](http://rubydoc.info/stdlib/core/File) class
- Reads files `File.read "Event_attendees.csv"`
- Reads line by line `File.readlins "Event_attendees.csv"`
- Checks of file exist `File.exist? "Event_attendees.csv"`


## String
- [#split](http://rubydoc.info/stdlib/core/String#split-instance_method)
	- By default it will break the string whenever it sees "" space.
	- Passing a parameter like "," would break the string apart along a comma "," character.
	
	- _**Example**_	 `line.split(",")`

- [#rjust](http://www.rubydoc.info/stdlib/core/String:rjust)- 
	- Append string to the front of other string.
	- If integer is greater than the length of string, returns a new `String` of length integer with string **right justified - _rjust_** and padded with padded string; otherwise, returns string.
	
	- _**Example**_	 `zipcode.rjust 5, "0" if zipcode.length < 5`


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
- I faced this error while trying to run my code: `undefined method 'encode' for nil:NilClass (NoMethodError)`

	I wrote a [blog post](bit.ly/1y1Kypg) about it where I show what caused that issue and what is the fix.
	

