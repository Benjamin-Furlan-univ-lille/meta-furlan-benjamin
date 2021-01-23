Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EMultiplicationTest class >> right: anEconstantr left: anEconstantl [ 
	^ self new right: anEconstantr; left: anEconstantl 
]

{ #category : #tests }
EMultiplicationTest >> testMultiplication [
	| ep1 ep2 |
	ep1 := Econstant new value: 11.
	ep2 := Econstant new value: 3.
	self assert: (EMultiplication new right: ep1; left: ep2) evaluate equals: 33
]

{ #category : #tests }
EMultiplicationTest >> testMultiplicationFivetimesThree [
	self assert: (EMultiplication fiveTimesThree) evaluate equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testMultiplicationNegate [
	| ep1 ep2 |
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	self assert: (EMultiplication new right: ep1; left: ep2) negated evaluate equals: -35
]

{ #category : #tests }
EMultiplicationTest >> testMultiplicationPrinting [
	| ep1 ep2 |
	ep1 := Econstant new value: 5.
	ep2 := Econstant new value: 7.
	self assert: (EMultiplication new right: ep1; left: ep2) negated printString equals: '- ( 7 * 5 )'
]

{ #category : #tests }
EMultiplicationTest >> testMultiplicationWithClassInstance [
	| ep1 ep2 |
	ep1 := Econstant value: 11.
	ep2 := Econstant value: 3.
	self assert: (EMultiplication right: ep1 left: ep2) evaluate equals: 33
]
