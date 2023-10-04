//
//  CharacterModel.swift
//  AppPatronesDaniel
//
//  Created by Daniel Cazorro Frías on 4/10/23.
//

import Foundation

typealias CharactersModel = [CharacterModel]

struct CharacterModel {
    var name: String
    var id: String
    var favorite: Bool?
    var description: String
    var photo: String?
}

var sampleCharacterData: CharactersModel = [
    CharacterModel(
        name: "Maestro Roshi",
        id: "14BB8E98-6586-4EA7-B4D7-35D6A63F5AA3",
        favorite: false,
        description: "Es un maestro de artes marciales que tiene una escuela, donde entrenará a Goku y Krilin para los Torneos de Artes Marciales. Aún en los primeros episodios había un toque de tradición y disciplina, muy bien representada por el maestro. Pero Muten Roshi es un anciano extremadamente pervertido con las chicas jóvenes, una actitud que se utilizaba en escenas divertidas en los años 80. En su faceta de experto en artes marciales, fue quien le enseñó a Goku técnicas como el Kame Hame Ha",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/Roshi.jpg?width=300"
    ),
    CharacterModel(
        name: "Mr. Satán",
        id: "1985A353-157F-4C0B-A789-FD5B4F8DABDB",
        favorite: false,
        description: "Mr. Satán es un charlatán fanfarrón, capaz de manipular a las masas. Pero en realidad es cobarde cuando se da cuenta que no puede contra su adversario como ocurrió con Androide 18 o Célula. Siempre habla más de la cuenta, pero en algún momento del combate empieza a suplicar. Androide 18 le ayuda a fingir su victoria a cambio de mucho dinero. Él acepta el trato porque no podría soportar que todo el mundo le diera la espalda por ser un fraude.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/dragon-ball-satan.jpg?width=300"
    ),
    CharacterModel(
            name: "Krilin",
            id: "D88BE50B-913D-4EA8-AC42-04D3AF1434E3",
            favorite: false,
            description: "Krilin lo tiene todo. Cuando aún no existían los 'memes', Krilin ya los protagonizaba. Junto a Yamcha ha sido objeto de burla por sus desafortunadas batallas en Dragon Ball Z. Inicialmente, Krilin era el mejor amigo de Goku siendo sólo dos niños que querían aprender artes marciales. El Maestro Roshi les entrena para ser dos grandes luchadores, pero la diferencia entre ambos cada vez es más evidente. Krilin era ambicioso y se ablanda con el tiempo. Es un personaje que acepta un papel secundario para apoyar el éxito de su mejor amigo Goku de una forma totalmente altruista.",
            photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/08/Krilin.jpg?width=300"
        ),
    CharacterModel(
            name: "Goku",
            id: "D13A40E5-4418-4223-9CE6-D2F9A28EBE94",
            favorite: false,
            description: "Sobran las presentaciones cuando se habla de Goku. El Saiyan fue enviado al planeta Tierra, pero hay dos versiones sobre el origen del personaje. Según una publicación especial, cuando Goku nació midieron su poder y apenas llegaba a dos unidades, siendo el Saiyan más débil. Aun así se pensaba que le bastaría para conquistar el planeta. Sin embargo, la versión más popular es que Freezer era una amenaza para su planeta natal y antes de que fuera destruido, se envió a Goku en una incubadora para salvarle.",
            photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300"
        ),
    CharacterModel(
            name: "Vegeta",
            id: "6E1B907C-EB3A-45BA-AE03-44FA251F64E9",
            favorite: false,
            description: "Vegeta es todo lo contrario. Es arrogante, cruel y despreciable. Quiere conseguir las bolas de Dragón y se enfrenta a todos los protagonistas, matando a Yamcha, Ten Shin Han, Piccolo y Chaos. Es despreciable porque no duda en matar a Nappa, quien entonces era su compañero, como castigo por su fracaso. Tras el intenso entrenamiento de Goku, el guerrero se enfrenta a Vegeta y estuvo a punto de morir. Lejos de sobreponerse, Vegeta huye del planeta Tierra sin saber que pronto tendrá que unirse a los que considera sus enemigos.",
            photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/vegetita.jpg?width=300"
        ),
    CharacterModel(
        name: "Bulma",
        id: "64143856-12D8-4EF9-9B6F-F08742098A18",
        favorite: false,
        description: "Bulma es un personaje sorprendente en un momento donde las protagonistas femeninas escaseaban. Aparece desde el primer episodio de Dragon Ball como el encuentro más curioso que tiene Goku con un ser humano. Su apariencia responde a los estándares de belleza, con quien hacen múltiples referencia a su ropa interior o su fisionomía femenina. Sin embargo, Bulma es una joven inteligente con mucha ambición para convertirse en una científica de renombre. Siempre está inventando artefactos tecnológicos y uno de sus mayores inventos fue el radar de las bolas de Dragón, ya que quería encontrarlas. Es una aventurera con una personalidad amable y bondadosa, aunque también tiene carácter fuerte cuando se enfada. En Dragon Ball Z creó una máquina del tiempo con la que Trunks del Futuro pudo viajar al pasado para alertar de la nueva amenaza que era Célula. En ese instante, Bulma y Vegeta forman una sorprendente pareja de anime, sobre todo tras ver el pasado del Saiyan. El paso del tiempo no ha hecho justicia al personaje que cada vez tiene menor relevancia, pero Bulma es el personaje femenino más importante de Dragon Ball.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/11/bulma.jpg?width=300"
    ),
    CharacterModel(
            name: "Freezer",
            id: "C3DB3923-5D4F-4D23-9B76-4A6FA7B23B2A",
            favorite: false,
            description: "Freezer es uno de los personajes más crueles y despiadados de Dragon Ball Z. Es un tirano que gobierna sobre un gran imperio, y su objetivo es conquistar el universo. A lo largo de la serie, se revela que Freezer es un ser extremadamente poderoso, capaz de destruir planetas enteros con facilidad. Su forma final, conocida como \"Freezer Dorado\", es aún más formidable. Freezer es el principal antagonista de la saga de Namekusei y es responsable de la muerte de muchos personajes queridos, incluyendo a Krilin. Su enfrentamiento final con Goku es uno de los momentos más icónicos de la serie.",
            photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/07/freezer.jpg?width=300"
        ),
    CharacterModel(
        name: "Beerus",
        id: "0D17430D-4382-40CA-BDCF-5B87428C92F6",
        favorite: false,
        description: "El Dios de la Destrucción fue el villano principal de Dragon Ball Super. Sin embargo, ya había hecho acto de presencia en la película Dragon Ball Z: La Batalla de los Dioses como antagonista. El diseño del personaje es uno de los más singulares de Toriyama y se inspiró en su gato para crearlo, así como en la mitología egipcia. A pesar del título que ostenta, Beerus es más dócil de lo que parece en un primer momento. Su presentación dejó huella porque amenazó con destruir el planeta Tierra por mera diversión.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/06/dragon-ball-super-beerus.jpg?width=300"
    ),
    CharacterModel(
        name: "Piccolo",
        id: "9A812FC1-8903-4421-9C87-CE41D740BD25",
        favorite: false,
        description: "Piccolo es uno de los personajes más icónicos y complejos de Dragon Ball Z. Inicialmente, es un villano que busca vengarse de Goku por derrotar a su predecesor, el Rey Piccolo. Sin embargo, con el tiempo, Piccolo se redime y se convierte en un aliado valioso. Además de su poderosa capacidad de lucha, Piccolo es conocido por su inteligencia estratégica. También desempeña un papel importante en la crianza de Gohan, el hijo de Goku, y desarrolla un fuerte vínculo con él. A lo largo de la serie, Piccolo lucha junto a los demás guerreros Z para proteger la Tierra de las amenazas que surgen.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/07/Piccolo.jpg?width=300"
    ),
    CharacterModel(
        name: "Kaito",
        id: "FE0AD406-3B22-4A81-9DDF-15444A42B995",
        favorite: false,
        description: "En España se le conoció como Kaito, pero también se le llama Kaio-sama, una deidad que controla la Galaxia del Norte en Dragon Ball. Es muy fácil cogerle cariño a este personaje que vive en un planeta diminuto, donde se entrenó por primera vez Goku. Después de morir en el combate contra Raditz, Kami le dice a Goku que tiene que hacer el camino de la serpiente y entrenar con Kaio para enfrentarse a los Saiyan que llegarán a la Tierra. Kaio es simpático, amable y bonachón, así que ambos protagonizan escenas muy divertidas por el carácter infantil de Goku. Su planeta tiene una gravedad 10 veces superior a la Tierra, por lo que si Goku se acostumbra a ella se hará más fuerte. Kaio tiene la capacidad de observar todo lo que ocurre en la Galaxia de gracias a sus antenas y comunicarse de forma telepática. Es el creador de técnicas especiales como Genkidama y Kaio Ken, aunque nunca se le ve luchar. Con la llegada de Célula al planeta Tierra, Goku lleva al villano al planeta de Kaito donde lo hace explotar y provoca así la muerte del personaje.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/09/Por-esto-aun-Kaito-no-lo-han-resucitado.jpg?width=300"
    ),
    CharacterModel(
        name: "Raditz",
        id: "413819B7-82D6-4336-945B-976F9BF04D9F",
        favorite: false,
        description: "Con la llegada de Raditz a la Tierra comienza Dragon Ball Z. Tiene mucha presencia física como Saiyan con una larga melena y una armadura que permite ver sus músculos. Es uno de los pocos Saiyan que sobrevivieron a la destrucción del Planeta Vegeta y siente absoluto desprecio por los humanos y cualquier ser que sea más débil. Cuando se encuentra con un granjero no duda en matarlo aun sabiendo que no es una amenaza real para él. Es cruel y despiadado, con un carácter muy parecido a Vegeta.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2019/10/Raditz.jpg?width=300"
    ),
    CharacterModel(
        name: "Célula",
        id: "EA0D9204-9894-4A86-B7F1-92DDBBC8BD23",
        favorite: false,
        description: "o se entiende Dragon Ball sin un villano como Célula. Se trata de un bioandroide creado en el futuro por el Doctor Gero como parte de un proyecto para vengarse de Goku. Por tanto, fueron creados para destruir al protagonista porque en el pasado había acabado con el Ejército Red Ribbon. Esta criatura está compuesta por células de Goku, Piccolo, Vegeta, Freezer y su padre el Rey Cold, así que es conocedor de todas sus técnicas de combate. No obstante tiene que absorber la energía de los androides para alcanzar la forma perfecta.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/05/3CD8B1C5-134E-419E-AB5D-D1440C922A7E-e1590480274537.png?width=300"
    ),
    CharacterModel(
        name: "Androide 18",
        id: "4D386AB5-AF69-45D2-B15A-B1D86B57F9DE",
        favorite: false,
        description: "ndroide 18 es la prueba fehaciente de que se le puede coger cariño a los villanos. La aparición de los hermanos androides presentó al Dr. Gero como nuevo antagonista de la serie. Este científico había experimentado con su propio hijo para crear androides y como resultado creó a los Androides 16, 17 y 18 para destruir a Goku. Poca gente sabe que el nombre original de Androide 18 es Lázuli, una joven rubia con ojos azules que no tiene ninguna expresividad. Su fuerza es superior al de muchos guerreros e incluso mayor que Shen Long (Shenron), motivo por el que no pudo devolverles su forma humana. Así que es capaz de vencer en combate a Krilin y a Goku, aunque este último se dejó ganar. A pesar de su belleza, la serie explota su lado más guerrero y se muestra más cercana a Krilin cuando tiene detalles con ella. Finalmente los dos se casan y tienen una hija que se parece mucho a ambos.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/01/Androide-18.jpg?width=300"
    ),
    CharacterModel(
        name: "Androide 17",
        id: "963CA612-716B-4D08-991E-8B1AFF625A81",
        favorite: false,
        description: "Es el hermano gemelo de Androide 18. Son muy parecidos físicamente, aunque Androide 17 es un joven moreno. También está programado para destruir a Goku porque fue el responsable de exterminar el Ejército Red Ribbon. Sin embargo, mató a su creador el Dr. Gero por haberle convertido en un androide en contra de su voluntad. Es un personaje con mucha confianza en sí mismo, sarcástico y rebelde que no se deja pisotear. Ese exceso de confianza le hace cometer errores que pueden costarle la vida",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2019/10/dragon-ball-androide-17.jpg?width=300"
    ),
    CharacterModel(
        name: "Trunks del Futuro",
        id: "6AF516DD-529B-47A5-B3DB-9B88E55432C6",
        favorite: false,
        description: "Trunks es hijo de Bulma y Vegeta, pero tarda bastante en aparecer en la trama. Todo se vuelve más interesante cuando aparece un misterioso viajero del tiempo que se llama Trunks del Futuro, que será determinante en Dragon Ball Z. Este personaje es una versión del pequeño Trunks que ha viajado al pasado para advertir de las amenazas que pueden destruir el mundo. Es el único superviviente de los Guerreros Z en un futuro alternativo apocalíptico, así que utiliza la máquina del tiempo que inventa su madre para regresar al tiempo presente.",
        photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/07/Trunks.jpg?width=300"
    )
]
