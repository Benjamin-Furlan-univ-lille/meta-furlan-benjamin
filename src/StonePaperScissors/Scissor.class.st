Class {
	#name : #Scissor,
	#superclass : #Object,
	#category : #StonePaperScissors
}

{ #category : #'as yet unclassified' }
Scissor >> play: anElement [ 
	^ anElement playAgainstScissors: self.
]

{ #category : #'as yet unclassified' }
Scissor >> playAgainstPaper: anElement [ 
	^ #scissors.
]

{ #category : #'as yet unclassified' }
Scissor >> playAgainstScissors: anElement [ 
	^ #draw.
]

{ #category : #'as yet unclassified' }
Scissor >> playAgainstStone: anElement [ 
	^ #stone.
]
