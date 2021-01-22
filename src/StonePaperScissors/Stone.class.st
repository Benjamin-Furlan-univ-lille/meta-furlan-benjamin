Class {
	#name : #Stone,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Stone >> play: anElement [ 
	^ anElement playAgainstStone: self.
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstPaper: anElement [ 
	^ #paper.
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstScissors: anElement [ 
	^ #stone.
]

{ #category : #'as yet unclassified' }
Stone >> playAgainstStone: anElement [ 
	^ #draw.
]
