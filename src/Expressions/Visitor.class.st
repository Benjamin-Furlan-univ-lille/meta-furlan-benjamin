Class {
	#name : #Visitor,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
Visitor >> visiteAddition: anEExpression [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Visitor >> visiteEConstant: anEExpression [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Visitor >> visiteMultiplication: anEExpression [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Visitor >> visiteNegation: anEExpression [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Visitor >> visiteRaisedTo: anEExpression [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Visitor >> visiteVariable: anEExpression [ 
	^ self subclassResponsibility 
]
