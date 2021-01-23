Class {
	#name : #BinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'right',
		'left'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
BinaryExpression >> evaluateWith: aCollection [ 
	^ (right evaluateWith: aCollection asDictionary ) + (left evaluateWith: aCollection asDictionary )
]

{ #category : #'as yet unclassified' }
BinaryExpression >> left: anEconstant [ 
	left := anEconstant
]

{ #category : #'as yet unclassified' }
BinaryExpression >> operatorString [
	^ self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
BinaryExpression >> printOn: aStream [
	aStream nextPutAll: ' ( '; 
			  nextPutAll: left printString ;
			  nextPutAll: ' ';
			  nextPutAll: self operatorString ;
			  nextPutAll: ' ';
			  nextPutAll: right printString ;
			  nextPutAll: ' )'.
]

{ #category : #'as yet unclassified' }
BinaryExpression >> right: anEconstant [ 
	right:= anEconstant
]

{ #category : #'as yet unclassified' }
BinaryExpression >> right: anEconstant left: anEconstant2 [ 
	^ self new right: anEconstant ; left: anEconstant2 .
]
