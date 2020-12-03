

//http://www.theoldjailartcenter.org/15-fascinating-fun-facts/enlightening-and-dazzle-your-mind/

var facts = 
[


            '"A research found that learning and practising art strongly correlates with a higher achievement in reading and maths."',
            'New brain research showed that creativity, social development and self-worth, are promoted through art.',
            'Painting the Mona Lisa’s lips took Leonardo da Vinci 12 years! Only the lips!',
            'Roman Statues were made with detachable heads. One head could be taken off and replaced by yet another one.',
            'Before he learned to walk, Picasso could draw. The first word he spoke was the Spanish word for pencil.',
            'There are many ways in which we can interpret the world. Kids learn through art to celebrate the multiple perspectives of our world.',
            'Art is the perfect vehicle for having fun while learning and even for play.',
            'There can be more than one solution to a problem is what arts teach us. Look until you find a solution.',
            'Leonardo da Vinci was a vegetarian and also fought for animal rights. He bought caged birds and then set them free.',
            'Pablo Picasso was an animal lover. He owned a pet monkey, a goat, an owl, a turtle and packs of dogs and cats.',
            'Imagination and critical thinking are developed through art.',
            'Everyone is born creative. Some just need more practice to find their creativity.',
            'In 1565, the first pencil was invented in England.',
            'Andy Brown, an English artist, stitched together 1000 used tea bags, to create a portrait of Queen Elizabeth II.',
            'Learning to become creative is a deliberate process, very much the same as learning to read or doing maths.'
]

function factCheck()
{
    var randomGen = Math.floor(Math.random()*(facts.length));
    document.getElementById('factDisplay').innerHTML = facts[randomGen];

}