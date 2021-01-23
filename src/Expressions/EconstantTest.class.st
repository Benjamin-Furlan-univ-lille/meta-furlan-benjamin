Class {
	#name : #EconstantTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EconstantTest >> testDoubleNegated [
	self assert: (Econstant new value: 5 ) negated negated evaluate equals: 5
]

{ #category : #tests }
EconstantTest >> testEvaluate [ 
	self assert: (Econstant new value: 5 ) evaluate equals: 5
]

{ #category : #tests }
EconstantTest >> testInitialize [	
	self assert: (Econstant value: 13 ) evaluate equals: 13
]

{ #category : #tests }
EconstantTest >> testNegated [
	self assert: (Econstant new value: 5 ) negated evaluate equals: -5
]

{ #category : #tests }
EconstantTest >> testPrinting [
	self assert: (Econstant new value: 5 ) printString equals: '5'
]
