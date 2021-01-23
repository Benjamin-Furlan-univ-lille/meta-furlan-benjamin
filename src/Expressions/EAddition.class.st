Class {
	#name : #EAddition,
	#superclass : #BinaryExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EAddition class >> fivePlusThree [
	<sampleInstance>
	^ self new right: Econstant constant3 ; left: Econstant constant5 
]

{ #category : #'as yet unclassified' }
EAddition class >> right: anEconstant left: anEconstant2 [ 
	^ self new right: anEconstant; left: anEconstant2 .
	
]

{ #category : #'as yet unclassified' }
EAddition >> evaluate [
	^ right evaluate + left evaluate.
]

{ #category : #'as yet unclassified' }
EAddition >> operatorString [
	^ '+'.
]
