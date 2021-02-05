Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
ENegation class >> expression: anEconstant [ 
	^ self new expression: anEconstant
]

{ #category : #'as yet unclassified' }
ENegation >> acceptVisitor: aVisitor [ 
	aVisitor visiteNegation: self.
]

{ #category : #'as yet unclassified' }
ENegation >> evaluate [
	^ expression evaluate negated. 
]

{ #category : #'as yet unclassified' }
ENegation >> evaluateWith: anObject [ 
	^ (expression evaluateWith: anObject) negated .
]

{ #category : #'as yet unclassified' }
ENegation >> expression [
	^expression
]

{ #category : #'as yet unclassified' }
ENegation >> expression: anEconstant [ 
	expression := anEconstant
]

{ #category : #'as yet unclassified' }
ENegation >> printOn: aStream [
	aStream nextPutAll: '-'; nextPutAll: expression printString 
]
