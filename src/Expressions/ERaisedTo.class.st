Class {
	#name : #ERaisedTo,
	#superclass : #BinaryExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
ERaisedTo >> acceptVisitor: anEPrintor [ 
	anEPrintor visiteRaisedTo: self.
]

{ #category : #'as yet unclassified' }
ERaisedTo >> evaluate [ 
	^ left evaluate raisedTo: right evaluate 
]

{ #category : #'as yet unclassified' }
ERaisedTo >> evaluateWith: aCollection [ 
	^ (right evaluateWith: aCollection asDictionary ) raisedTo: (left evaluateWith: aCollection asDictionary )
]

{ #category : #'as yet unclassified' }
ERaisedTo >> operatorString [
	^ '^'
]
