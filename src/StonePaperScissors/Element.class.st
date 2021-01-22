Class {
	#name : #Element,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Element >> play: anElement [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Element >> playAgainstPaper: anElement [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Element >> playAgainstScissors: anElement [ 
	^ self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Element >> playAgainstStone: anElement [ 
	^ self subclassResponsibility 
]
