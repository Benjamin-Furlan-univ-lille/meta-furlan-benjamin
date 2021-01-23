Class {
	#name : #EAddingTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EAddingTest >> testEvaluate [ 
	| ep1 ep2 |
	ep1:= Econstant new value: 4.
	ep2:= Econstant new value: 8.
	self assert: (EAddition new right:ep1; left: ep2 ) evaluate equals: 12
]

{ #category : #tests }
EAddingTest >> testEvaluateFivePlusThree [
	self assert: (EAddition fivePlusThree  ) evaluate equals: 8
]

{ #category : #tests }
EAddingTest >> testEvaluateWithClassInstance [ 
	| ep1 ep2 |
	ep1:= Econstant  value: 4.
	ep2:= Econstant  value: 8.
	self assert: (EAddition right:ep1 left: ep2 ) evaluate equals: 12
]

{ #category : #tests }
EAddingTest >> testEvaluateWithNegation [
	| ep1 ep2 |
	ep1:= ENegation new expression: (Econstant new value: 5).
	ep2:= Econstant new value: 3.
	self assert: (EAddition new right:ep1; left: ep2 ) evaluate equals: -2
]

{ #category : #tests }
EAddingTest >> testMultiplicationPrinting [
	| ep1 ep2 |
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	self assert: (EAddition  new right: ep1; left: ep2) negated printString equals: '- ( 7 + 5 )'
]
