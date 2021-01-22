Class {
	#name : #Paper,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Paper >> play: anElement [ 
	^ anElement playAgainstPaper: self.
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstPaper: anElement [ 
	^ #draw.
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstScissors: anElement [ 
	^ #scissors.
]

{ #category : #'as yet unclassified' }
Paper >> playAgainstStone: anElement [ 
	^ #paper.
]
