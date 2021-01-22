Class {
	#name : #PaperTest,
	#superclass : #TestCase,
	#category : #StonePaperScissors
}

{ #category : #tests }
PaperTest >> testDrawAgainstPaper [
	self assert:( Paper new playAgainstPaper: (Element new)) equals:#draw
]

{ #category : #tests }
PaperTest >> testLooseAgainstScissor [
	self assert:( Paper new playAgainstScissors: (Element new)) equals:#scissors
]

{ #category : #tests }
PaperTest >> testWinAgainstStone [
	self assert:( Paper new playAgainstStone: (Element new)) equals:#paper
]
