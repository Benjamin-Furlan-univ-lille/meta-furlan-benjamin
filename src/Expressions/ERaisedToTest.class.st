Class {
	#name : #ERaisedToTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ERaisedToTest >> testRaisedTo [ 
	| ep1 ep2 |
	ep1 := Econstant new value: 3.
	ep2 := Econstant new value: 5.
	self assert: (ERaisedTo new right: ep1; left: ep2) evaluate equals: 125
]

{ #category : #tests }
ERaisedToTest >> testRaisedToNegated [ 
	| ep1 ep2 |
	ep1 := Econstant new value: 3.
	ep2 := Econstant new value: 5.
	self assert: (ERaisedTo  new right: ep1; left: (ENegation expression: ep2) ) evaluate equals: -125
]

{ #category : #tests }
ERaisedToTest >> testRaisedToPrinting [
	| ep1 ep2 |
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	self assert: (ERaisedTo new right: ep1; left: ep2) negated printString equals: '- ( 7 ^ 5 )'
]
