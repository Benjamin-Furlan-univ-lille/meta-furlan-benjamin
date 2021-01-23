Class {
	#name : #EMultiplication,
	#superclass : #BinaryExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EMultiplication class >> fiveTimesThree [
	<sampleInstance>
	^ self new right: Econstant constant3;  left: Econstant constant5 .
]

{ #category : #'as yet unclassified' }
EMultiplication class >> right: anEconstantr left:anEconstantl [ 
	^ self new right: anEconstantr ; left: anEconstantl 
]

{ #category : #'as yet unclassified' }
EMultiplication >> evaluate [
	^ right evaluate * left evaluate.
]

{ #category : #'as yet unclassified' }
EMultiplication >> evaluateWith: aCollection [ 
	^ (right evaluateWith: aCollection asDictionary ) * (left evaluateWith: aCollection asDictionary )
]

{ #category : #'as yet unclassified' }
EMultiplication >> operatorString [
	^ '*'.
]
