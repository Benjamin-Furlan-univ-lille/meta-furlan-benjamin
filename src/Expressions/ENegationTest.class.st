Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testEvaluate [ 
	self assert: (ENegation new expression: (Econstant new value: 5)) evaluate equals:-5
]

{ #category : #tests }
ENegationTest >> testEvaluateWithClassInstance [
	self assert: (ENegation expression: (Econstant new value: 5)) evaluate equals:-5
]

{ #category : #tests }
ENegationTest >> testPrintEvaluate [
	self assert: (ENegation expression: (Econstant new value: 5)) printString equals:'-5'
]
