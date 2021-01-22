Class {
	#name : #ScissorsTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
ScissorsTest >> testDrawAgainstScissor [
	self assert: (Scissor new playAgainstScissors: (Element new)) equals: #draw
]

{ #category : #tests }
ScissorsTest >> testLooseAgainstStone [
	self assert: (Scissor new playAgainstStone: (Element new)) equals: #stone
]

{ #category : #tests }
ScissorsTest >> testWinAgainstPaper [
	self assert: (Scissor new playAgainstPaper: (Element new)) equals: #scissors
]
