## Ruby Katas

#### Write Ruby katas / quizzes using TDD.

1. Write an Algorithms dealing with Numbers
2. Remove Duplicates
	* After wrote my solution. I search online and into the Ruby library and found many other solutions. Some are complex and others are magical.
	* The most magical one is `integers | integers`. What is that ??!!
		a. It returns a new array by joining original array with other array, excluding any duplicates and preserving the order from the original array.
		b. It compares elements using their hash and eql? methods for efficiency.
		c. The | pipe charachter set unioin between both objects (integers and integers). What does is, unioin/add both objects together only when they are unique. 

```
irb(main):001:0> [ 1, 2, 4, 5, 2, 8, 4, 1 ] | [ 4, 3, 4, 6, 2, 3, 4, 1 ] #=> [1, 2, 4, 5, 8, 3, 6]
```

- Here are other solutions:
   
    1. `integers & integers` 
    
    	*( & ) => Returns a new set containing elements common to the set and the given enumerable object.*
   
    2. `integers.to_set.to_a` 
		   
		 *( to_s ) => Returns self if no arguments are given. Otherwise, converts the set to another with `klass.new(self, *args, &block).`*
    
    3. `Hash[*integers.map {|obj| [obj, obj]}.flatten].values`
    
  	  *( * ) => is the splat operator. It is used to split an array into a list of arguments. It take an array and turn it into a 'list' of arguments so that the Hash can accept it.*
  	  
  	  *( flatten ) => Returns a new array that is a one-dimensional flattening of this hash. That is, for every key or value that is an array, extract its elements into the new array.*
    
    4. `integers.inject({}) {|h,v| h[v] = h[v].to_i + 1 ; h }.reject{|k,v| v==0}.keys`