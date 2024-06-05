import ddf.minim.*;import ddf.minim.analysis.*;import ddf.minim.effects.*;import ddf.minim.signals.*;import ddf.minim.spi.*;import ddf.minim.ugens.*;


//Orion
estrella c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21;
lineacos l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l20,l21,l22;
cost cst1;

//Cassiopeia
estrella c22,c23,c24,c25,c26;
lineacos l23,l24,l25,l26;
cost cst2;

//Gemini
estrella ge1,ge2,ge3,ge4,ge5,ge6,ge7,ge8,ge9,ge10,ge11,ge12,ge13,ge14,ge15,ge16,ge17;
lineacos gel1,gel2,gel3,gel4,gel5,gel6,gel7,gel8,gel9,gel10,gel11,gel12,gel13,gel14,gel15,gel16;
cost gec1;

//Acuario
estrella ac1,ac2,ac3,ac4,ac5,ac6,ac7,ac8,ac9,ac10,ac11,ac12,ac13,ac14,ac15;
lineacos acl1,acl2,acl3,acl4,acl5,acl6,acl7,acl8,acl9,acl10,acl11,acl12,acl13,acl14;
cost acc1;

//Draco
estrella dra1,dra2,dra3,dra4,dra5,dra6,dra7,dra8,dra9,dra10,dra11,dra12,dra13,dra14,dra15;
lineacos dral1,dral2,dral3,dral4,dral5,dral6,dral7,dral8,dral9,dral10,dral11,dral12,dral13,dral14,dral15;
cost drac1;

//Aries
estrella ar1,ar2,ar3,ar4;
lineacos arl1,arl2,arl3;
cost arc1;

//Triangulum
estrella tr1,tr2,tr3;
lineacos trl1,trl2,trl3;
cost trc1;

//Lacerta
estrella la1,la2,la3,la4,la5,la6;
lineacos lal1,lal2,lal3,lal4,lal5,lal6;
cost lac1;  

//Lynx
estrella ly1,ly2,ly3,ly4,ly5,ly6,ly7,ly8;
lineacos lyl1,lyl2,lyl3,lyl4,lyl5,lyl6,lyl7;
cost lyc1;

//Fornax
estrella fo1,fo2;
lineacos fol1;
cost foc1;

//Cygnus
estrella cy1,cy2,cy3,cy4,cy5,cy6,cy7,cy8,cy9,cy10;
lineacos cyl1,cyl2,cyl3,cyl4,cyl5,cyl6,cyl7,cyl8,cyl9;
cost cyc1;

//Estrellas solitarias
estrella c1,c2,es1,es2;

//Planetas,lunas,etc
estrella marte,jupiter,saturno,luna;

//Contorno
ellipsec cir1;

//Crear Botones 
botonr r1,r2,r3,game,creditos,menuG,menuCs;
botonc bc1;

//Textos botones
texto txt1,txt2,txt3,gtxt,ctxt,mgtxt,mctxt;

//Texto varios
texto txt4,txt5,txt6,txt7,txt8,unM;
//Creditos
texto titC,nom,cred;

//Imagen Fondo, sonido.
imagen im1,im2;

//Rectangulo fondo 
rectan rc1,rc2;

PImage sound;
PImage fondo; 
PFont fuente;
Minim minim;
AudioPlayer sonido;

int px;
int py;
boolean estBtn, estG, estC, estReturn;

void setup(){
  fullScreen();
  //size(1920,1080);
  //size(1680,1050);
  //size(1280,720);
  background(0);
  sound = loadImage("sound.png");
  fondo = loadImage("UniversoA.jpg");
  minim = new Minim(this);
  sonido = minim.loadFile("interestelar.mp3");
  fuente = createFont("Times New Roman",64);
  textFont(fuente);
  estBtn = false; estG=false;estC=false;estReturn=false;
  
  //Declaración de las estrellas
  //Orion
  c3 = new estrella(((378*width)/1920),((707*height)/1080),7,"RIGEL","Rigel es una estrella supergigante azul en la constelación de Orión. Rigel es el componente más brillante y masivo, y el epónimo, de un sistema estelar de al menos cuatro estrellas que aparecen como un único punto de luz azul-blanco a simple vista Este sistema se encuentra a una distancia aproximada de 860 años luz (260  pc) del sol. ");
  c4 = new estrella(((277*width)/1920),((696*height)/1080),5,"SAIPH","Es la sexta estrella más brillante de la constelación de Orión. Las mediciones de paralaje arrojan una distancia estimada de 650años luz (200 parsecs ) del Sol , que es aproximadamente lo mismo que Betelgeuse . [1] Es más pequeño, menos luminoso pero más caliente en su superficie que Rigel con una magnitud visual aparente de 2,1. ");
  c5 = new estrella(((333*width)/1920),((652*height)/1080),5,"ALNITAK","Alnitak es un sistema estelar triple en la constelación de Orión Tiene las designaciones ζ Orionis , que se latiniza a Zeta Orionis y se abrevia Zeta Ori o ζ Ori , y 50 Orionis , abreviado 50 Ori El sistema está ubicado a una distancia de varios cientos de parsecs del Sol y es una de las tres estrellas principales del Cinturón de Orión junto con Alnilam y Mintaka.  La estrella principal , Alnitak Aa, es una supergigante azul caliente con una magnitud absoluta de −6,0 y es la estrella de clase O más brillante del cielo nocturno con una magnitud visual de +2,0. Tiene dos compañeros: Ab y B, el último conocido durante más tiempo y el primero descubierto recientemente");
  c6 = new estrella(((349*width)/1920),((650*height)/1080),5,"ALNILAM","Alnilam es la estrella central del Cinturón de Orión en la constelación ecuatorial de Orión . Tiene la designación de Bayer ε Orionis , que se latiniza a Epsilon Orionis y se abrevia Epsilon Ori o ε Ori . Esta es una estrella supergigante azul masiva a unos 2.000  años luz de distancia. Se estima que es de 275.000 a 832.000 veces más luminoso que el Sol , y de 40 a 44 veces más masivo .");
  c7 = new estrella(((364*width)/1920),((647*height)/1080),5,"MINTAKA","Mintaka designación Delta Orionis ( δ Orionis , abreviado Delta Ori , δ Ori ) y 34 Orionis ( 34 Ori ), es un sistema estelar múltiple a unos 1.200 años luz del Sol . en la constelación de Orión Junto con Alnitak (Zeta Orionis) y Alnilam (Epsilon Orionis), las tres estrellas forman el Cinturón de Orión., conocido por muchos nombres entre las culturas antiguas. La estrella se encuentra muy cerca del ecuador celeste . Cuando Orión está cerca del meridiano , Mintaka es la más a la derecha de las estrellas del Cinturón cuando se ve desde el Hemisferio Norte mirando hacia el sur .");
  c8 = new estrella(((347*width)/1920),((586*height)/1080),7,"BETELGEUSE","Betelgeuse es una supergigante roja de tipo espectral M1-2 y una de las estrellas más grandes visibles a simple vista . Por lo general, es la décima estrella más brillante del cielo nocturno y, después de Rigel , la segunda más brillante de la constelación de Orión . Es una estrella variable semirregular claramente rojiza cuya magnitud aparente , que varía entre +0.0 y +1.6, tiene el rango más amplio mostrado por cualquier estrella de primera magnitud. Si estuviera en el centro de nuestro Sistema Solar , su superficie estaría más allá del cinturón de asteroides y engulliría las órbitas de Mercurio , Venus , la Tierra y Marte .");
  c9 = new estrella(((409*width)/1920),((588*height)/1080),5,"MEISSA","Meissa designada Lambda Orionis ( λ Orionis , abreviado Lambda Ori , λ Ori ) es una estrella en la constelación de Orión Es una estrella múltiple aproximadamente1.300  ly de distancia con una magnitud aparente combinada de 3,33. [11] Los componentes principales son una estrella gigante O8 y una estrella de secuencia principal de clase B , separadas por aproximadamente 4″. A pesar de que Meissa es más luminosa y solo un poco más lejos que Rigel, parece 3 magnitudes más tenue en longitudes de onda visuales, y gran parte de su radiación se emite en el ultravioleta debido a su alta");
  c10 = new estrella(((413*width)/1920),((614*height)/1080),5,"BELLATRIX","Bellatrix es la tercera estrella más brillante de la constelación de Orión , situada a 5° al oeste de la supergigante roja Betelgeuse (Alpha Orionis). Tiene la designación de Bayer γ Orionis , que se latiniza a Gamma Orionis . Con una magnitud ligeramente variable de alrededor de 1,6, suele ser la 25ª estrella más brillante del cielo nocturno . Ubicada a una distancia de 250 ± 10  años luz del Sol, es una estrella gigante azul alrededor de 7,7 veces más masiva que el sol con 5,75 veces su diámetro.");
  c11 = new estrella(((344*width)/1920),((567*height)/1080),5,"MU ORIONIS","Binario espectroscópico");
  c12 = new estrella(((351*width)/1920),((535*height)/1080),5,"XI ORIONIS","");
  c13 = new estrella(((366*width)/1920),((537*height)/1080),5,"NU ORIONIS","");
  c14 = new estrella(((405*width)/1920),((517*height)/1080),5,"64 ORIONIS","");
  c15 = new estrella(((428*width)/1920),((521*height)/1080),5,"CHI1 ORIONIS","");
  c16 = new estrella(((502*width)/1920),((615*height)/1080),5,"PI1 ORIONIS","");
  c17 = new estrella(((504*width)/1920),((624*height)/1080),5,"P12 ORIONIS","");
  c18 = new estrella(((497*width)/1920),((633*height)/1080),5,"PI3 ORIONIS (TABIT)","");
  c19 = new estrella(((489*width)/1920),((641*height)/1080),5,"PI4 ORIONIS","");
  c20 = new estrella(((471*width)/1920),((656*height)/1080),5,"PI5 ORIONIS","");
  c21 = new estrella(((456*width)/1920),((658*height)/1080),5,"PI6 ORIONIS","");
  //Casiopea
  c22 = new estrella(((925*width)/1920),((429*height)/1080),5,"EPSILON CASIOPEA (SEGIN)","Epsilon Cassiopeiae o ε Cassiopeiae , oficialmente llamado Segin ( / ˈ s ɛ ɡ ɪ n / ), es una sola estrella en la constelación norteña de Casiopea . Con una magnitud visual aparente de 3,4, esta es una de las estrellas más brillantes de la constelación. La distancia a esta estrella se ha determinado directamente utilizando mediciones de paralaje , arrojando un valor de alrededor de 460 a 430 años luz (140 a 130 parsecs ) desde elsol _ Se acerca a la deriva con una velocidad radial de −8 km/s.");
  c23 = new estrella(((950*width)/1920),((448*height)/1080),5,"DELTA CASIOPEA (RUCHBAH)","Delta Cassiopeiae ( δ Cassiopeiae , abreviado Delta Cas , δ Cas ) es un sistema estelar binario eclipsante en la constelación circumpolar del norte de Cassiopeia . Según las mediciones de paralaje tomadas durante la misión Hipparcos , está aproximadamente a 99,4 años luz (30,5 parsecs ) de la Tierra. Delta Cassiopeiae es el componente principal o 'A' de un sistema estelar múltiple designado como WDS J01258+6014. Por lo tanto, los dos componentes de Delta Cassiopeiae se denominan WDS J01258+6014 Aa y Ab. Aa se llama oficialmente Ruchbah / r ʌ k b ə / , el nombre tradicional del sistema.");
  c24 = new estrella(((979*width)/1920),((446*height)/1080),5,"GAMMA CASIOPEA (NAVI)","Gamma Cassiopeiae , latinizado de γ Cassiopeiae , es una estrella brillante en el centro del distintivo asterismo W en la constelación circumpolar del norte de Cassiopeia . Aunque es una estrella bastante brillante con una magnitud visual aparente que varía de 1,6 a 3,0, no tiene un nombre árabe o latino tradicional. A veces se conoce con el nombre informal Navi. Gamma Cassiopeiae es una estrella Be , una estrella variable y un sistema estelar múltiple. Según las mediciones de paralaje realizadas por el satélite Hipparcos , se encuentra a una distancia de aproximadamente 550 años luz de la Tierra. Junto con su compañero de movimiento propio común, HD 5408 , el sistema podría contener un total de ocho estrellas.");
  c25 = new estrella(((999*width)/1920),((464*height)/1080),5,"ALPHA CASIOPEA (SCHEDAR)","Alpha Cassiopeiae o α Cassiopeiae , también llamada Schedar ( / ˈ ʃ ɛ d ɑːr / ), es una estrella de segunda magnitud en la constelación norteña de Casiopea . Aunque Johann Bayer la catalogó como la estrella alfa , el brillo visual de α Cas se asemeja mucho a la estrella ' beta ' (β) en la constelación ( Beta Cassiopeiae ) y puede parecer marginalmente más brillante o más tenue, dependiendo de qué banda de paso se use. Sin embargo, cálculos recientes deEl telescopio WISE de la NASA confirma que α Cas es el más brillante de Casiopea, con una magnitud aparente de 2.240. Su magnitud absoluta es 18 veces mayor que β Cas, y se encuentra más de cuatro veces más lejos del Sol .");
  c26 = new estrella(((1029*width)/1920),((449*height)/1080),5,"BETA CASIOPEA (CAPH)","Beta Cassiopeiae ( β Cassiopeiae , abreviado Beta Cas o β Cas ), oficialmente llamada Caph / ˈ k æ f / , es una estrella variable Delta Scuti en la constelación de Casiopea . Es una estrella gigante perteneciente a la clase espectral F2 . La estrella blanca de segunda magnitud (+2,28 mag, variable) tiene una magnitud absoluta de +1,3 mag.");
  //Gemini
  ge1 = new estrella(((268*width)/1920),((507*height)/1080),5,"XI GEMINIS"," La estrella tiene una magnitud visual aparente de 3,35, que es lo suficientemente brillante como para ser vista a simple vista. A partir de mediciones de paralaje estelar , su distancia al Solse puede estimar en 58,7 años luz (18,0 parsecs ). Aunque generalmente se considera una sola estrella, hay alguna evidencia de que Xi Geminorum puede ser un sistema binario espectroscópico que consta de dos estrellas componentes de igual masa.");
  ge2 = new estrella(((232*width)/1920),((446*height)/1080),5,"LAMBDA GEMINIS","Lambda Geminorum , latinizado de λ Geminorum, es un candidato a sistema estelar múltiple en la constelación de Géminis . Es visible a simple vista por la noche con una magnitud visual aparente combinada de 3,57.  La distancia a este sistema es de 101  años luz según el paralaje , y se acerca a la deriva con una velocidad radial de –7,4 km/s. Es un miembro de lo que se sospecha que es una cola de marea que se arrastra de la corriente Hyades. Los componentes A y B de este sistema forman un binario amplio. La secundaria, componente B, es una compañera estelar de magnitud 10,7 a una separación angular de9.29 ″ del primario a lo largo de un ángulo de posición de 35.72°, a partir de 2009. El primario fue identificado como binario espectroscópico por EB Frost en 1924. ");
  ge3 = new estrella(((313*width)/1920),((497*height)/1080),6,"GAMA GEMINIS","Gamma Geminorum ( γ Geminorum , abreviado Gamma Gem , γ Gem ), formalmente llamado Alhena/ælˈh iːnə/, es el tercer objeto más brillante en la constelación de Géminis . Tiene una magnitud visual aparente de 1,9, lo que lo hace fácilmente visible a simple vista incluso en regiones urbanas . Basado en mediciones de paralaje con el satélite Hipparcos , se encuentra a una distancia de aproximadamente 109 años luz.(33 parsecs ) del Sol. Alhena es una estrella en evolución que está agotando el suministro de hidrógeno en su núcleo y ha entrado en la etapa subgigante . El espectro coincide con una clasificación estelar de A0 IV. ");
  ge4 = new estrella(((299*width)/1920),((446*height)/1080),5,"ZETA GEMINIS","Zeta Geminorum ( ζ Geminorum , abreviado Zeta Gem , ζ Gem ) es una estrella brillante con componentes de cúmulo, componentes ópticos distantes y un probable socio espectroscópico en la constelación zodiacal de Géminis , en su sur, en la 'pata' izquierda del gemelo Pólux . . Es una estrella variable cefeida clásica , de las cuales se han encontrado más de 800 en nuestra galaxia. Como tal, su pulsación regular y luminosidad (probado en su clase para corresponder) y su relativa proximidad significa que la estrella es un calibrador útil para calcular la escala de distancia cósmica. . Según las mediciones de paralaje , se encuentra aproximadamente a 1.200 años luz del Sol. Zeta Geminorum es el componente principal o 'A' de un sistema estelar múltiple designado como WDS J07041+2034. Lleva el nombre tradicional Mekbuda. ");
  ge5 = new estrella(((283*width)/1920),((417*height)/1080),5,"DELTA GEMINIS","Delta Gemini ( δ Gemini , abreviado Delta Gem , δ Gem ), formalmente llamado Wasat, es un sistema estelar triple en la constelación de Géminis. Delta Geminorum es una estrella subgigante con la clasificación estelar F0 IV. Está a unos 60,5 años luz (18,5 parsecs ) de distancia. Esta estrella tiene 1,57 veces la masa del Sol y gira rápidamente con una velocidad de rotación proyectada de 129,7 km s −1 . La edad estimada es de 1.600 millones de años.");
  ge6 = new estrella(((271*width)/1920),((374*height)/1080),5,"KAPPA GEMINIS","Kappa Geminorum (κ Gem / 77 Geminorum / HD 62345) es una estrella binaria en la constelación de Géminis. Aunque no tiene nombre propio habitual, en astronomía china se la llama (Jīxīn), «pila de leña», ya que marca el asterismo del mismo nombre dentro de la constelación de Jǐng. El sistema se encuentra a 141 años luz del Sistema Solar. La componente principal, Kappa Geminorum A, es una gigante amarilla de tipo espectral G8III y magnitud aparente +3,57. Su temperatura efectiva es de 4990 K y brilla con una luminosidad 74 veces mayor que la del Sol. Su diámetro es 11,5 veces más grande que el diámetro solar y su velocidad de rotación proyectada es de 5 km/s, dando lugar a un período de rotación que puede durar hasta 115 días. Con una masa de 2,7 masas solares, tiene una edad aproximada de 500 millones de años.");
  ge7 = new estrella(((312*width)/1920),((360*height)/1080),7,"POLUX","Pollux es la estrella más brillante de la constelación de Géminis . Tiene la designación de Bayer β Geminorum , que se latiniza a Beta Geminorum y abrevia Beta Gem o β Gem . Esta es una estrella gigante evolucionada de color naranja ubicada a una distancia de 34 años luz , lo que la convierte en la gigante más cercana al Sol. Desde 1943, el espectro de esta estrella ha servido como uno de los puntos de anclaje estables por los que se clasifican otras estrellas. En 2006, un planeta extrasolar (designadoSe confirmó que Pollux b o β Geminorum b, más tarde llamado Thestias) lo orbitaba. Con una magnitud visual aparente de 1,14, Pollux es la estrella más brillante de su constelación, incluso más brillante que su vecina Castor (α Geminorum). ");
  ge8 = new estrella(((313*width)/1920),((379*height)/1080),5,"IPSILON GEMINIS","Ípsilon Geminorum (υ Gem / 69 Geminorum) es una estrella en la constelación de Géminis. Tiene magnitud aparente +4,03 y se encuentra, de acuerdo a la nueva reducción de los datos de paralaje de Hipparcos, a 271 ± 15 años luz del Sistema Solar. Forma parte del denominado «Grupo de Wolf 630» —que incluye, entre otros, a R Leonis, R Sculptoris y R Coronae Borealis—, conjunto de estrellas que comparte el mismo movimiento propio a través del espacio. Es una fría gigante roja de tipo espectral M0III cuya temperatura efectiva es de 3926 ± 16 K. 417 veces más luminosa que el Sol, el valor de su diámetro angular una vez considerado el oscurecimiento de limbo —5,00 ± 0,05 milisegundos de arco—, permite evaluar su verdadero diámetro. Éste es 44 veces más grande que el diámetro solar, equivalente a 0,21 UA.");
  ge17 = new estrella(((336*width)/1920),((388*height)/1080),5,"IOTA GEMINIS","Es una estrella solitaria de cuarta magnitud en la constelación de Géminis . Forma un triángulo isósceles con Cástor y Pólux , y se encuentra a menos de un grado de las estrellas de quinta magnitud 64 y 65 Geminorum. Basado en un cambio de paralaje anual de 27,10  masa , Iota Geminorum se encuentra a unos 120,4  años luz del Sol . Esta es una estrella gigante evolucionada de grupo rojo con una clasificación estelar de G9 III. Lo más probable es que sea un miembro de la población del disco delgado galáctico . La estrella tiene 1,89 [6] veces la masa del Sol , pero se ha expandido a 10 veces el radio solar . Brilla con 48 veces la luminosidad del Sol desde suatmósfera exterior a una temperatura efectiva de 4.753 K.");
  ge9 = new estrella(((370*width)/1920),((363*height)/1080),7,"CASTOR","Es el segundo objeto más brillante en la constelación zodiacal de Géminis . Tiene la designación de Bayer α Geminorum , que se latiniza a Alpha Geminorum y se abrevia Alpha Gem o α Gem . Con una magnitud visual aparente de 1,93, es una de las estrellas más brillantes del cielo nocturno . Castor parece singular a simple vista, pero en realidad es un sistema estelar séxtuple organizado en tres pares binarios . . . . . Aunque es el miembro 'α' (alfa) de la constelación, es más débil que el 'β' (beta) Geminorum , Pollux. Castor es un sistema estelar múltiple formado por seis estrellas individuales; hay tres componentes visuales, todos los cuales son binarios espectroscópicos .");
  ge10 = new estrella(((380*width)/1920),((398*height)/1080),5,"TAU GEMINIS","Es una estrella en la constelación de Géminis de magnitud aparente +4,40 que se encuentra a 302 años luz del Sistema Solar. Aunque no tiene nombre propio, junto a θ Geminorum, ι Geminorum, ν Geminorum y φ Geminorum, era conocida como Woo Chow Shih o Woo Choo How, «los Siete Príncipes Feudales de China».Forma un sistema binario con una enana marrón, descubierta en 2004. Es una gigante naranja de tipo espectral K2III con una temperatura efectiva de 4441 ± 19 K. Su diámetro angular estimado, 2,68 ± 0,23 milisegundos de arco, permite evaluar su diámetro, siendo este 27 veces más grande que el del Sol, lo que equivale a 0,13 UA. Gira lentamente sobre sí misma, con una velocidad de rotación proyectada de 3,0 km/s.");
  ge11 = new estrella(((440*width)/1920),((405*height)/1080),5,"THETA GEMINIS","Es una sola estrella en la constelación zodiacal norteña de Géminis . Es visual a simple vista con una magnitud visual aparente de 3,59. Basado en un cambio de paralaje anual de 17,25  mas , está a unos 189  años luz de distancia del Sol. Esta es una estrella subgigante de tipo A en evolución con una clasificación estelar de A2 IV. Tiene 1,80 veces la masa del Sol e irradia 93 veces la luminosidad solar . El diámetro angular medido es 0,82 ± 0,03  mas . A una distancia estimada de esta estrella, esto produce un tamaño físico de aproximadamente 5,1 veces el radio del Sol . Tiene alrededor de 252 millones de años y tiene una velocidad de rotación proyectada de 133  km/s.");
  ge12 = new estrella(((375*width)/1920),((450*height)/1080),5,"MEBSUTA","Es una estrella en la constelación de Géminis , en la 'pierna' derecha extendida del gemelo Castor . La magnitud visual aparente de +3,06 la convierte en una de las estrellas más brillantes de esta constelación. La distancia a esta estrella se puede determinar mediante mediciones de paralaje , dando un valor de 840 años luz.(260 parsecs ), con un margen de error de 40 ly (12 pc). El espectro de esta estrella coincide con una clasificación estelar de G8 Ib, donde la clase de luminosidad de Ib indica que se trata de una estrella supergigante de menor luminosidad . Alternativamente, puede ser una estrella que ha pasado por la etapa de rama gigante asintótica y posee una capa de polvo desprendida. ");
  ge13 = new estrella(((361*width)/1920),((488*height)/1080),5,"NU GEMINIS","Es un sistema estelar triple en la constelación de Géminis . Tiene una magnitud visual aparente de 4,16, [2] que es lo suficientemente brillante como para ser visible a simple vista en una noche oscura. Basado en un cambio de paralaje anual de 5,99  mas , se encuentra a una distancia de aproximadamente 540  años luz del Sol . La posición de este sistema cerca de la eclíptica significa que está sujeto a ocultaciones lunares. Los componentes internos de este sistema estelar múltiple tienen un período orbital de unos 54 días y una órbita casi circular con una excentricidad de 0,056. Existe cierta incertidumbre en el tipo espectral , con clasificaciones que van desde una estrella de secuencia principal hasta una gigante.");
  ge14 = new estrella(((390*width)/1920),((484*height)/1080),5,"MU GEMINIS","Formalmente llamado Tejat es una sola estrella en la constelación norteña de Géminis . A partir de las mediciones de paralaje obtenidas durante la misión Hipparcos , está aproximadamente a 230 años luz (71 parsecs ) de distancia del Sol . La posición de la estrella cerca de la eclíptica significa que está sujeta a ocultaciones lunares. MU forma el componente primario o 'A' de un sistema estelar doble designado WDS J06230+2231 junto con UCAC2 39641417 [14] (también designado WDS J06230+2231BC), en sí mismo un par binario. Mu Geminis tiene una magnitud visual aparente promedio de alrededor de 2.9, lo que lo convierte en el cuarto miembro más brillante de Géminis .");
  ge15 = new estrella(((405*width)/1920),((491*height)/1080),5,"TEJAT PRIOR","Tejat Prior (η Geminorum / η Gem / 7 Geminorum) es una estrella de magnitud aparente +3,32 en la constelación de Géminis. El término Tejat proviene de una palabra árabe de origen desconocido, mientras que la palabra Prior diferencia a esta estrella de la vecina Tejat Posterior (μ Geminorum), visualmente a menos de 2º. También se la conoce con el nombre de Propus, de origen griego, cuyo significado es «pie delantero». Tejat Prior es una gigante roja de tipo espectral M3IIIab y 3600 K de temperatura. Situada a 350 años luz del Sistema Solar, brilla con una luminosidad 2400 veces mayor que la del Sol. Tiene un radio 130 veces más grande que el radio solar");
  ge16 = new estrella(((429*width)/1920),((498*height)/1080),5,"1 GEMINIS","Es un sistema estelar de magnitud aparente +4,15 en la constelación de Géminis, cerca del límite con Tauro. Está situado a solo un grado al este del solsticio de verano, marcando así la posición del mismo. Recibe el nombre de Propus, utilizado también para designar a η Geminorum. Se encuentra a 151 años luz del Sistema Solar. Aunque a simple vista aparece como una sola estrella, 1 Geminorum está formado por dos componentes cuya separación media es de 0,2 segundos de arco, lo que equivale a una distancia real de 9,15 UA. La excentricidad de la órbita hace que la separación varíe entre 5,5 UA y 12,5 UA, siendo el período orbital de 13,35 años. Las dos estrellas son gigantes amarillas, 1 Geminorum A de tipo espectral G6III y magnitud 4,7, y 1 Geminorum B de tipo G8III y magnitud 5,1.");
  //Acuario
  ac1 = new estrella(((1223*width)/1920),((826*height)/1080),5,"1 ACUARIO","1 Aquarii (1 Aqr) es una estrella de magnitud aparente +5,15. Se localiza dentro la constelación de Acuario muy cerca del límite con la vecina Aquila. De acuerdo a la nueva reducción de los datos de paralaje de Hipparcos, se encuentra a 233 ± 11 años luz de distancia del Sistema Solar. Como otras muchas estrellas del cielo nocturno —por ejemplo τ² Aquarii o 88 Aquarii, en esta misma constelación— 1 Aquarii es una gigante naranja. Tiene tipo espectral K1III y una temperatura efectiva entre 4688 y 4839 K, cifra que varía según la fuente consultada.Su radio es 11 veces más grande que el radio solar, por lo que su tamaño es casi igual al de Pólux (β Geminorum), la gigante naranja más próxima a nosotros. Gira sobre sí misma con una velocidad de rotación proyectada de 1,8 km/s.");
  ac2 = new estrella(((1230*width)/1920),((760*height)/1080),5,"PSI1 ACUARIO","Psi1 Aquarii (ψ1 Aqr / 91 Aquarii / HD 219449) es una estrella de la constelación de Acuario. Comparte la denominación de Bayer «Psi» con Psi2 Aquarii y Psi3 Aquarii, siendo todas ellas estrellas independientes. Mientras que Psi1 Aquarii se encuentra a 150 años luz del Sistema Solar, Psi2 Aquarii está a más del doble de distancia y Psi3 Aquarii está a una distancia intermedia entre ambas. Psi1 Aquarii es una estrella de magnitud aparente +4,24. Es una estrella múltiple cuya estrella principal, Psi1 Aquarii A, es una gigante naranja de tipo espectral K0III. Su radio es 10 veces más grande que el radio solar y es 50 veces más luminosa que el Sol. Con una masa aproximada 2,5 veces mayor que la masa solar, durante su estancia en la secuencia principal fue una estrella blanco-azulada de tipo B8.");
  ac3 = new estrella(((1284*width)/1920),((746*height)/1080),5,"LAMBDA ACUARIO","Lambda Aquarii , informalmente conocida como Hydor, es una estrella variable en la constelación ecuatorial de Acuario . El nombre está latinizado a partir de la designación de Bayer λ Aquarii. La magnitud visual aparente de esta estrella oscila entre 3,57 y 3,80, que es lo suficientemente brillante como para ser visible a simple vista. Se encuentra a solo 0,39 grados al sur de la eclíptica y, por lo tanto, está sujeta a ocultaciones lunares . La estrella es eclipsada por el sol entre el 1 y el 4 de marzo; así la estrella se puede ver toda la noche, cruzando el cielo, a principios de septiembre, en la época actual. Lambda Aquarii se encuentra a una distancia de aproximadamente 310 años luz (95  pc ) del Sol según el paralaje , pero se acerca a la deriva con una velocidad radial de -10,5 km/s.");
  ac4 = new estrella(((1312*width)/1920),((701*height)/1080),5,"ETA ACUARIO","Eta Aquarii , latinizado de η Aquarii, es la designación de Bayer para una estrella en la constelación ecuatorial de Acuario . Es visible a simple vista con una magnitud visual aparente de 4,04. La distancia a esta estrella, determinada por medidas de paralaje , es de unos 168 años luz (52 parsecs). Se está acercando al Sol con una velocidad radial de –8 km/s. Eta Aquarii está cerca del radiante de una lluvia de meteoritos que lleva su nombre. La clasificación estelar de Eta Aquarii es B9IV-Vn, lo que puede indicar que está comenzando a evolucionar alejándose de la secuencia principal hacia un subgigante a medida que se agota el suministro de hidrógeno en su núcleo. Tiene 65  millones de años y está girando rápidamente con una alta velocidad de rotación proyectada de 271 km/s. ");
  ac5 = new estrella(((1327*width)/1920),((698*height)/1080),7,"ZETA ACUARIO","Zeta Aquarii (ζ Aquarii, ζ Aqr) es la designación de Bayer para un sistema estelar triple , la estrella central del asterismo en la constelación ecuatorial de Acuario . La magnitud visual aparente combinada de este sistema es 3,65, que es fácilmente visible a simple vista. Las mediciones de paralaje arrojan una distancia estimada de alrededor de 92 años luz (28 parsecs ) de la Tierra. El binario fue medido por William Herschel en 1779, sin embargo , Christian Mayer , enumeró una observación anterior en su primer catálogo de estrellas dobles en 1784, por lo que su verdadero descubridor no está claro. Las dos estrellas tienen un período orbital de unos 587 años. El semieje mayor es de 3,8 segundos de arco y tienen una excentricidad orbital de 0,40. ");
  ac6 = new estrella(((1347*width)/1920),((704*height)/1080),5,"GAMMA ACUARIO","Gamma Acuario , o γ Aquarii , es un supuesto sistema estelar binario en la constelación de Acuario . Tiene una magnitud visual aparente de 3,849, lo que la convierte en uno de los miembros más brillantes de la constelación. Según las mediciones de paralaje tomadas durante la misión Hipparcos , esta estrella se encuentra a una distancia de aproximadamente 164 años luz (50 parsecs ) del Sol . Se está acercando al Sol con una velocidad radial de −16 km/s. En 1998, Olin J. Eggen incluyó a esta estrella como candidata a miembro del Hyades Supercluster. Se presenta como una estrella de secuencia principal de tipo A con una clasificación estelar de A0 V, alrededor de dos veces y media más masiva que el Sol.");
  ac7 = new estrella(((1384*width)/1920),((692*height)/1080),7,"ALFA ACUARIO","Alpha Aquarii , oficialmente llamado Sadalmelik, es una sola estrella en la constelación de Acuario . La magnitud visual aparente de 2,94 la convierte en la segunda estrella más brillante de Acuario. Según las mediciones de paralaje realizadas durante la misión Hipparcos , se encuentra a una distancia de aproximadamente 520 años luz (160 parsecs ) delsol _ Se aleja cada vez más del Sol con una velocidad radial de 7,5 km/s. Con una edad de 53 millones de años, Alpha Aquarii se ha convertido en una supergigante con una clasificación estelar de G2 Ib. Se encuentra dentro de la franja de inestabilidad Cefeida del diagrama de Hertzsprung-Russell , cerca del borde rojo (más frío), pero no está clasificada como una estrella variable.");
  ac8 = new estrella(((1486*width)/1920),((708*height)/1080),6,"BETA ACUARIO","Beta Aquarii es una sola estrella en la constelación de Acuario . Tiene el nombre oficial Sadalsuud, y en ocasiones se identifica como β Aquarii , abreviado Beta Aqr o β Aqr . Según las mediciones de paralaje obtenidas durante la misión Hipparcos , este componente se encuentra a una distancia de aproximadamente 540  años luz (165 parsecs ) del Sol . Se aleja cada vez más con una velocidad radial de 6,5 km/s. La estrella sirve como estándar de velocidad radial de la IAU. β Aquarii es la estrella más brillante de Acuario con una magnitud aparente de 2,87 y una clasificación estelar de G0 Ib. Desde 1943, el espectro de esta estrella ha servido como uno de los puntos de anclaje estables por los cuales se clasifican otras estrellas.");
  ac9 = new estrella(((1626*width)/1920),((710*height)/1080),5,"EPSILON ACUARIO","Epsilon Aquarii , latinizado de ε Aquarii, es una sola estrella en la constelación zodiacal ecuatorial de Acuario , ubicada cerca de la frontera occidental de la constelación con Capricornio . Tiene el nombre propio Albali, ahora reconocido formalmente por la IAU . Esta es una estrella de color blanco que es visible a simple vista con una magnitud visual aparente de 3,77. Basado en paralaje medidas tomadas durante la misión Hipparcos , se encuentra a una distancia de aproximadamente 208 años luz (64 pc) del Sol con una magnitud absoluta de −0,46. La estrella se está acercando a una velocidad radial de −15 km/s. Este objeto es una estrella de secuencia principal de tipo A con una clasificación estelar de A1 V.");
  ac10 = new estrella(((1375*width)/1920),((738*height)/1080),5,"THETA ACUARIO","Theta Aquarii ( θ Aquarii , abreviado Theta Aqr , θ Aqr ) , oficialmente llamado Ancha (distinguido de Ankaa , con la misma pronunciación), es una estrella en la constelación ecuatorial de Acuario . Visible a simple vista con una magnitud aparente de 4,175, se encuentra a una distancia de unos 187 años luz (57 parsecs ) del Sol . Como está cerca de la eclíptica , puede ser ocultada por la Luna , o muy raramente por los planetas. Ancha pertenece a la clase espectral G8 con una clase de luminosidad de III-IV, lo que sugiere que, con una edad de 437 millones de años, esta estrella se encuentra a medio camino entre las etapas subgigante y gigante de su evolución . Las estimaciones de la masa de la estrella oscilan entre 2,39 y 2,78  veces la masa del Sol.");
  ac11 = new estrella(((1415*width)/1920),((773*height)/1080),5,"IOTA ACUARIO","Iota Aquarii , latinizado de ι Aquarii, es la designación de Bayer para un sistema de estrellas binarias en la constelación ecuatorial de Acuario . Es visible a simple vista con una magnitud aparente de +4.279. Según las mediciones de paralaje realizadas durante la misión Hipparcos , la distancia a esta estrella es de unos 175 años luz (54 parsecs ). El sistema se acerca al Sol con una velocidad radial de −10 km/s. La naturaleza binaria de este sistema se informó en 2009 luego de un estudio de velocidad radial utilizando el instrumento HARPS . Una búsqueda infrarroja de compañeros alrededor de esta estrella en 2010 no tuvo éxito. La presencia de una compañera estelar se confirmó mediante detección espectral directa en 2016.");
  ac12 = new estrella(((1345*width)/1920),((760*height)/1080),5,"SIGMA ACUARIO","Sigma Aquarii , latinizado de σ Aquarii, es una estrella doble en la constelación ecuatorial de Acuario , situada a unos 1,3° al sur de la eclíptica . Debido a su proximidad a la eclíptica , esta estrella está sujeta a ocultación por parte de la Luna . Tiene una tonalidad blanca y es visible a simple vista con una magnitud visual aparente de 4,81. Según las mediciones de paralaje , la distancia a esta estrella es de aproximadamente 175 años luz (54parsecs ). Se aleja cada vez más con una velocidad radial de +11 km/s. La clasificación estelar de Sigma Aquarii es A0 IVs, indicando que es una estrella subgigante .");
  ac13 = new estrella(((1300*width)/1920),((784*height)/1080),5,"TAU1 ACUARIO","Tau 1 Aquarii , latinizado de τ 1 Aquarii, es la designación de Bayer para una sola estrella en la constelación ecuatorial de Acuario . Con una magnitud visual aparente de 5,66, es un débil ojo desnudo que requiere cielos suburbanos oscuros para verlo. Las mediciones de paralaje realizadas durante la misión Hipparcos arrojan una distancia estimada de aproximadamente 355 años luz (109 parsecs ) de la Tierra. La estrella se aleja cada vez más con una velocidad radial de +15 km/s. Es un miembro candidato de la corriente estelar Piscis-Eridanus. La clasificación estelar de τ 1 Aquarii es B9 V; justo a lo largo del límite entre una estrella de secuencia principal de tipo B y tipo A.");
  ac14 = new estrella(((1291*width)/1920),((795*height)/1080),7,"DELTA ACUARIO","Delta Aquarii ( δ Aquarii , abreviado Delta Aqr , δ Aqr ), oficialmente llamado Skat, es la tercera estrella más brillante en la constelación de Acuario . La magnitud visual aparente es de 3,3, que se puede apreciar a simple vista. La distancia a esta estrella es de unos 113 años luz (35 parsecs ) según las mediciones de paralaje , y tiene un compañero cercano. El espectro de Delta Aquarii coincide con una clasificación estelar de A3 Vp, lo que indica que se trata de una estrella de secuencia principal de tipo A químicamente peculiar que genera energía a través de la fusión nuclear de hidrógeno en su núcleo. Esta estrella tiene el doble de la masa del Sol y un radio 2,4 veces mayor .");
  ac15 = new estrella(((1259*width)/1920),((830*height)/1080),5,"88 ACUARIO","88 Acuario (88 Aqr / c2 Aquarii) 1 es una estrella en la constelación de Acuario . De magnitud aparente +3,68, es la quinta estrella más brillante de su constelación después de Sadalsuud (β Aquarii), Sadalmelik (α Aquarii), δ Aquarii y ζ 1 Aquarii . Se encuentra a una distancia de 270 años luz del Sistema Solar , siendo el error en dicha medición del 1,8%. 88 Aquarii es un gigante naranja , como tantas otras estrellas en el cielo nocturno, por ejemplo, τ 2 Aquarii o ψ 1 Aquarii , en esta misma constelación. De tipo espectral K1III, tiene una temperatura efectiva de 4435 K. Brilla con una luminosidad 350 veces superior a la del Sol , un 60% superior a la de Arturo (α Bootis) y casi ocho veces superior a la de Pólux (β Geminorum).");
  //Draco
  dra1 = new estrella(((858*width)/1920),((188*height)/1080),5,"GIANFAR","Gianfar o Giuasar (λ Draconis / λ Dra / 1 Draconis) es una estrella de la constelación de Draco, el dragón, de magnitud +3,84. Se encuentra a 355 años luz de distancia del sistema solar. El nombre de λ Draconis en sus diversas acepciones —Gianfar, Giansar o Giauzar— puede tener distintos orígenes: de Al Jauzā, —una pequeña estrella próxima—, de Al Jauzah, «la Central», por su localización a mitad de camino entre las estrellas que apuntan al polo norte celeste y la propia estrella polar, o del persa Ghāuzar, «el Lugar de Veneno», en referencia a los puntos en los que la Luna intercepta la eclíptica. Otro nombre utilizado es Juza. Gianfar es una gigante roja de tipo espectral M0III con una temperatura de 3525 K y una luminosidad 1870 veces mayor que la del Sol.");
  dra2 = new estrella(((920*width)/1920),((178*height)/1080),5,"KAPPA DRACONIS","Kappa Draconis (κ Dra / 5 Draconis / HD 109387) es una estrella de la constelación de Draco. De magnitud aparente +3,88, está situada a 498 años luz del Sistema Solar. Forma una doble óptica con 6 Draconis, visualmente a 15 minutos de arco, siendo la distancia aproximada entre ellas de 30 años luz. En ocasiones es referida con el nombre propio de Ketu, alusivo a la «cola del Dragón». Kappa Draconis está catalogada como una gigante azul de tipo espectral B6IIIpe con una temperatura efectiva de 14.000 K. La «e» indica emisiones a ciertas longitudes de onda en su espectro, ya que Kappa Draconis es una estrella Be rodeada de un disco en rotación que ella misma ha creado.");
  dra3 = new estrella(((1031*width)/1920),((142*height)/1080),5,"THUBAN","Thuban, con la designación de Bayer Alpha Draconis o α Draconis , es un sistema estelar binario en la constelación norteña de Draco . Una estrella relativamente discreta en el cielo nocturno del hemisferio norte , es históricamente significativa por haber sido la estrella del polo norte del cuarto al segundo milenio antes de Cristo. Johann Bayer le dio a Thuban la designación Alpha y lo colocó como el único miembro de su clase de magnitud secundae en Draco, aunque su magnitud aparente actual de 3,65 significa que es 3,7 veces más débil que la estrella más brillante de la constelación, Gamma Draconis (Eltanin), que Bayer se sitúa en su clase de magnitud tercia aunque su magnitud aparente actual es de 2,24.");
  dra4 = new estrella(((1173*width)/1920),((141*height)/1080),5,"EDASICH","Edasich o Ed Asich (ι Draconis / 12 Draconis / HIP 75458) es la sexta estrella más brillante de la constelación de Draco, con magnitud aparente +3,29. Se encuentra a 103 años luz del sistema solar. Edasich es una gigante naranja de tipo espectral K2III y 4490 K de temperatura efectiva. Brilla con una luminosidad 70 veces mayor que la luminosidad solar.La medida de su diámetro angular —3,73 milisegundos de arco— permite conocer que su diámetro es 13 veces más grande que el del Sol.Presenta un contenido metálico superior al solar ([Fe/H] = +0,16) y —como la mayor parte de las estrellas de nuestro entorno— es una estrella del disco fino.");
  dra5 = new estrella(((1220*width)/1920),((166*height)/1080),5,"THETA DRACONIS","Theta Draconis (θ Dra / 13 Draconis / HD 144284) es una estrella de la constelación de Draco (el dragón) de magnitud aparente +4,01. Se encuentra a 68 años luz del Sistema Solar. Theta Draconis es una subgigante de tipo espectral F8IV con una temperatura de 6290 K y una luminosidad 8,6 veces mayor que la del Sol. Su radio, calculado a partir de la medida de su diámetro angular, es 2,5 veces mayor que el radio solar y su metalicidad es el 85% de la del Sol. Su velocidad de rotación en el ecuador es extraordinariamente alta, de al menos 28 km/s —no se conoce la inclinación de su eje respecto a nosotros—, lo que resulta en un período de rotación inferior a 4,5 días.");
  dra6 = new estrella(((1208*width)/1920),((195*height)/1080),5,"ETA DRACONIS","Eta Draconis A es una estrella con 2,55 veces la masa del Sol . El espectro coincide con una clasificación estelar de G8 III, con la clase de luminosidad III, lo que indica que se trata de una estrella gigante evolucionada que ha agotado el suministro de hidrógeno en su núcleo. Llegó a esta etapa en solo 550 millones de años porque las estrellas de mayor masa como esta consumen el suministro de hidrógeno más rápidamente que el Sol. El diámetro angular medido de esta estrella, después de la corrección del oscurecimiento de las extremidades , es de 3,72 ± 0,07 mas. A la distancia estimada de Eta Draconis, esto produce un tamaño físico de unas 11 veces el radio del Sol . Desde su envoltura extendida , irradia alrededor de 60 veces la luminosidad del Sol a una temperatura efectiva de 5055 K, dándole el resplandor amarillo de una estrella tipo G.");
  dra7 = new estrella(((1189*width)/1920),((236*height)/1080),5,"ALDHIBAH","Catalogada como una gigante blanco-azulada de tipo espectral B6III, Aldhibah tiene una temperatura efectiva de 12.900 K y una luminosidad 1150 veces mayor que la luminosidad solar. Temperatura y luminosidad permiten inferir su radio, 6,8 veces más grande que el radio solar, así como su masa, comprendida entre 4,5 y 5 masas solares. De acuerdo a los modelos de evolución estelar, Aldhibah está finalizando la fusión de su hidrógeno interno, por lo que en rigor es una subgigante y no una estrella gigante. Su velocidad de rotación de 43 km/s, que se corresponde con un período de rotación de menos de 8 días, es lenta para una estrella de sus características, lo que sugiere que su eje de rotación está aproximadamente orientado hacia nosotros. Aldhibah se encuentra a 340 años luz del Sistema Solar.");
  dra8 = new estrella(((1132*width)/1920),((284*height)/1080),5,"CHI DRACONIS","Chi Draconis es un sistema estelar en la constelación de Draco. La primera compañera es una estrella de cuarta magnitud de color amarillo-blanco (clase F) con una masa aproximadamente igual a la del sol , pero es casi el doble de luminosa. La segunda compañera es una estrella naranja (clase K) de sexta magnitud, menos masiva y de menor luminosidad que el sol. En 1898 se informó que este sistema era un sistema binario espectroscópico , con un período orbital de 280,55 días. Las dos estrellas tienen una separación promedio de casi una unidad astronómica , lo que interrumpiría la órbita de cualquier planeta similar a la Tierra que estuviera lo suficientemente cerca del primario como para albergar agua líquida. ");
  dra9 = new estrella(((1125*width)/1920),((306*height)/1080),5,"TAU DRACONIS","Tau Draconis, latinizado de τ Draconis , es un sistema estelar astrométrico binario en la constelación circumpolar del norte de Draco . La estrella es apenas visible a simple vista, con una magnitud visual aparente de 4,45. Basado en un cambio de paralaje anual de 22,28  mas medido desde la Tierra, se encuentra a unos 146  años luz del Sol . Su movimiento propio lo impulsa a través del cielo a una velocidad de 0,176  segundos de arco .por año. Esta es una estrella gigante de tipo K con una clasificación estelar de K2 III:, donde el punto y coma indica cierta incertidumbre sobre su valor espectral. Se considera una estrella rica en metales ");
  dra10 = new estrella(((1148*width)/1920),((324*height)/1080),5,"EPSILON DRACONIS","Epsilon Draconis , latinizado de ε Draconis, es una estrella de cuarta magnitud en la constelación de Draco . Esta estrella junto con Delta Draconis (Altais), Pi Draconis y Rho Draconis forman un asterismo conocido como Al Tāis, que significa (la Cabra). Epsilon Draconis es una estrella gigante amarilla con un tipo espectral de G8III. Tiene un radio que se ha estimado en 11 radios solares y una masa de 2,7 masas solares . En comparación con la mayoría de las estrellas de clase G , Epsilon Draconis es una estrella relativamente joven con una edad estimada de alrededor de 500 millones de años.");
  dra11 = new estrella(((1180*width)/1920),((310*height)/1080),5,"ALTAIS","Altais es la cuarta estrella más brillante de la constelación de Draco —el dragón— después de Etamin (γ Draconis), η Draconis y Alwaid (β Draconis). Su magnitud aparente es +3,07. Altais es una gigante amarillo-naranja de tipo espectral G9III. Sus características son similares a las de Vindemiatrix (ε Virginis), aunque es ligeramente menos luminosa y caliente que esta última. Su luminosidad es 63 veces mayor que la del Sol y su temperatura superficial es de 4817 K.Posee un radio 11 veces más grande que el radio solar. Muestra un contenido metálico inferior al solar en un 32% ([Fe/H] = -0,17).Con una masa 2,5 veces mayor que la del Sol, tiene una edad aproximada de 700 millones de años. En su núcleo de estrella gigante se produce la fusión del helio en carbono y oxígeno.");
  dra12 = new estrella(((1300*width)/1920),((259*height)/1080),5,"GRUMIUM","Hoy, la estrella se sitúa en la mandíbula del dragón, aunque se piensa que en las primeras representaciones de la figura señalaba la lengua. Situada a 111 años luz de distancia del Sistema Solar, Grumium es una gigante naranja de tipo espectral K2III. con una temperatura efectiva de 4472 K.Su radio es 11,5 veces más grande que el del Sol —cifra obtenida a partir del valor de su diámetro angular, 3,13 milisegundos de arco— y su luminosidad es 53 veces mayor que la luminosidad solar. Con una masa de 1,5 masas solares, Grumium tiene una edad aproximada de 3000 millones de años y se piensa que ha abandonado la secuencia principal recientemente, hace solo 160 millones de años, por lo que está aumentando en luminosidad con un núcleo inerte de helio.");
  dra13 = new estrella(((1316*width)/1920),((236*height)/1080),5,"GAIA DR2","(1420972548150735744) Estrella de la costelacion Draco, con magnitud de 4.75 y se encuentra a 97.77 años luz de distancia");
  dra14 = new estrella(((1350*width)/1920),((233*height)/1080),5,"BETA DRACONIS","El sistema binario consiste en un gigante brillante orbitado por un compañero enano una vez cada cuatro milenios más o menos. La compañera es aproximadamente 11 magnitudes más débil que la estrella principal. El espectro de la primaria, Beta Draconis A, coincide con una clasificación estelar de G2Ib-IIa, que muestra características mixtas de una estrella gigante brillante y una estrella supergigante , y figura como una estrella estándar para esa clase espectral. Tiene unos 65 millones de años y actualmente está experimentando su primer dragado convectivo. Beta Draconis A es una estrella enorme con seis veces la masa y aproximadamente 40 veces el radio . Con este tamaño, emite unas 950 veces la luminosidad del Sol .desde su envoltura exterior a una temperatura efectiva de 5160 K ,");
  dra15 = new estrella(((1364*width)/1920),((261*height)/1080),5,"GAMMA DRACONIS","Formalmente llamada Eltanin, es una estrella en la constelación norteña de Draco . Contrariamente a su designación gamma (históricamente en tercer lugar), es la estrella más brillante de Draco con una magnitud de 2,2, eclipsando a Beta Draconis en casi la mitad de la magnitud y Alpha Draconis en más de una magnitud. Gamma Draconis está a una distancia de 154,3 años luz (47,3 parsecs ) del Sol , según lo determinado por las mediciones de paralaje del satélite de astrometría Hipparcos . En 1728, mientras intentaba sin éxito medir la paralaje de esta estrella, el astrónomo inglés James Bradley descubrió la aberración de la luz resultante del movimiento relativo de la Tierra . El descubrimiento de Bradley aparentemente confirmó la teoría de Copérnico de que la Tierra giraba alrededor del Sol .");
  //Aries
  ar1 = new estrella(((794*width)/1920),((584*height)/1080),5,"41 ARIETIS","41 Arietis (abreviado 41 Ari ) es un sistema estelar triple en la constelación norteña de Aries . Con una magnitud visual aparente de 3,63, este sistema es fácilmente visible a simple vista. Tiene un cambio de paralaje anual de 19,69  mas , lo que indica que está a una distancia de 166 años luz (51 parsecs ) del Sol. El componente principal es una estrella de secuencia principal de tipo B con una clasificación estelar de B8 Vn. El sufijo 'n' indica líneas de absorción 'nebulosas' en el espectro de la estrella causadas por el efecto Doppler de rotación rápida. Tiene una velocidad de rotación proyectada de 175 km/s.");
  ar2 = new estrella(((865*width)/1920),((609*height)/1080),5,"HAMAL","Hamal, designación Alpha Arietis, es la estrella más brillante en la constelación zodiacal norteña de Aries. Con una magnitud visual aparente de 2,0, es la quincuagésima estrella media más brillante del cielo nocturno . Según las mediciones de paralaje realizadas con el satélite de astrometría Hipparcos , Hamal está a unos 65,8 años luz (20,2 parsecs ) de la Tierra. Es una estrella gigante que puede albergar un planeta en órbita con una masa mayor que Júpiter.");
  ar3 = new estrella(((885*width)/1920),((622*height)/1080),5,"SHERATAN","Sheratan o Sharatan es la segunda estrella más brillante en la constelación de Aries con magnitud aparente +2,64. Se encuentra a unos 60 años luz de distancia del Sistema Solar. Sheratan es una estrella blanca de la secuencia principal de tipo espectral A5V con una temperatura de 8200 K. Tiene una compañera cercana que no puede ser resuelta mediante el telescopio y sólo es detectable por espectroscopia. Cabe señalar la elevada excentricidad de la órbita (ε = 0,88), que hace que la separación entre ambas estrellas varíe entre 0,08 UA (un 20% de la distancia entre Mercurio y el Sol) y 1,2 UA (un 20% más de la distancia entre la Tierra y el Sol). El período orbital del sistema es de 107 días.");
  ar4 = new estrella(((886*width)/1920),((630*height)/1080),5,"GAMA ARIETIS","Gamma Arietis, es una estrella binaria (posiblemente trinaria ) en la constelación norteña de Aries . Los dos componentes se denominan γ1 Arietis o Gamma Arietis B y γ2. La magnitud visual aparente combinada de las estrellas es 3,86, que es fácilmente visible a simple vista y lo convierte en el cuarto miembro más brillante de Aries. Según las mediciones de paralaje obtenidas durante la misión Hipparcos , la distancia a Gamma Arietis desde el Sol es de aproximadamente 164 años luz (50 parsecs ).");
  //Triangulum
  tr1 = new estrella(((860*width)/1920),((561*height)/1080),5,"GAMMA TRIANGULI","Gamma Trianguli es la tercera estrella más brillante de la constelación de Triangulum con magnitud aparente +4,03, detrás de β Trianguli y Metallah (α Trianguli). Con una temperatura estimada de 9200 K, Gamma Trianguli es una estrella blanca de la secuencia principal de tipo espectral A1V, no muy diferente a Sirio (α Canis Majoris). Su luminosidad es equivalente a 28 soles y su radio es 2,1 veces más grande que el radio solar. Es una joven estrella cuya edad se estima en unos 200 millones de años. El estudio de su espectro muestra que su velocidad de rotación es muy alta, similar a la de estrellas como Altair (α Aquilae). Gira alrededor de sí misma a una velocidad de al menos 208 km/s, completando una vuelta en 12 horas o menos. Comparando este dato con el período de rotación del Sol —poco más de 25 días—, se obtiene una velocidad 104 veces mayor que la de nuestra estrella.");
  tr2 = new estrella(((872*width)/1920),((557*height)/1080),5,"BETA TRIANGULI","Beta Trianguli es la estrella más brillante en la constelación de Triangulum con magnitud aparente +3,00, por delante de Metallah o Mothallah (α Trianguli). Se encuentra a 124 años luz de distancia del sistema solar. Beta Trianguli es una estrella binaria. La compañera es una enana amarilla similar al Sol que cada 31,8 días completa la órbita alrededor de la estrella principal. La separación entre ambas, en una órbita claramente excéntrica, varía entre las 0,17 y las 0,42 UA. Al igual que otras estrellas también de tipo espectral A como Vega (α Lyrae), tiene un disco de polvo alrededor que puede ser un indicio de la existencia de planetas.");
  tr3 = new estrella(((894*width)/1920),((583*height)/1080),5,"ALFA TRIANGULI","Alpha Trianguli es una estrella binaria espectroscópica en la constelación Triangulum . Según las mediciones de paralaje obtenidas durante la misión Hipparcos , está aproximadamente a 63,3 años luz (19,4 parsecs ) de distancia del Sol. Las estimaciones de la clasificación estelar combinada para este sistema van desde F5III a F6IV, con la clase de luminosidad de 'IV' o 'III' que indica que el componente principal es una estrella subgigante o gigante , respectivamente. Es miembro de un sistema binario cercano, un binario espectroscópico , cuyos componentes completan una órbita alrededor de su centro de masa una vez cada 1,736 días.");
  //Lacerta
  la1 = new estrella(((1234*width)/1920),((511*height)/1080),5,"1 LACERTAE","1 Lacertae es una estrella solitaria en la constelación norteña de Lacerta . Es visible a simple vista con una magnitud visual aparente de 4,15. Según las mediciones de la nave espacial Hipparcos , esta estrella se encuentra a una distancia de aproximadamente 620  años luz . Se acerca a la Tierra con una velocidad radial heliocéntrica de -8,6 km/s. Una clasificación estelar de K3 II-III sugiere que se trata de una estrella gigante evolucionada / híbrido gigante brillante . Tiene 170 millones de años con alrededor de cuatro veces la masa del Sol y se ha expandido a un estimado de 69 veces el radio del Sol .");
  la2 = new estrella(((1192*width)/1920),((495*height)/1080),5,"6 LACERTAE","6 Lacertae es un sistema de estrellas binarias en la constelación norteña de Lacerta , ubicada a unos 1.900  años luz del Sol. Es visible a simple vista como una tenue estrella de color blanco azulado con una magnitud visual aparente combinada de 4,52. El sistema se acerca a la Tierra con una velocidad radial heliocéntrica de -9 km/s, y se sospecha que es miembro de la asociación Lac OB1. Tiene alrededor de 16  millones de años con una velocidad de rotación proyectada relativamente alta de 70 km/s. La estrella tiene 12,5 veces la masa del Sol y unas 7 veces el radio del Sol .");
  la3 = new estrella(((1175*width)/1920),((476*height)/1080),5,"5 LACERTAE","5 Lacertae es una binaria espectroscópica en la constelación Lacerta . Su magnitud aparente es de 4,36. 5 Lacertae es una estrella variable irregular lenta con una pequeña amplitud. La fotometría del satélite Hipparcos mostró cambios de brillo entre las magnitudes Hipparcos 4,39 y 4,56 sin una periodicidad clara. Se le dio la designación de estrella variable V412 Lacertae en 1999 en una lista de nombres especial dedicada a las variables detectadas en Hipparcos.");
  la4 = new estrella(((1163*width)/1920),((464*height)/1080),5,"ALPHA LACERTAE","Alpha Lacertae , latinizado de α Lacertae , es una sola estrella de color blanco en la constelación de Lacerta , ubicada a 103  años luz del Sol . Es la estrella más brillante de Lacerta con una magnitud visual aparente de 3,76. La estrella se acerca a la Tierra con una velocidad radial heliocéntrica de −4,5 km/s. Esta es una estrella ordinaria de secuencia principal de tipo A con una clasificación estelar de A1 V, lo que indica que está generando energía a través de la fusión de hidrógeno en su núcleo . Tiene alrededor de 400 millones de años con una velocidad de giro relativamente alta, mostrando una velocidad de rotación proyectada de 128 km/s. ");
  la5 = new estrella(((1164*width)/1920),((454*height)/1080),5,"BETA LACERTAE","Beta Lacertae es la cuarta estrella más brillante de la constelación de Lacerta . Basado en un cambio de paralaje anual de 19,19  mas , está a 170  años luz de distancia de la Tierra. A esa distancia, la magnitud visual se ve disminuida por un factor de extinción de 0,17 debido al polvo interestelar. Este es un gigante de tipo G evolucionado con una magnitud visual aparente de aproximadamente 4,43. Es una estrella roja y el componente principal de un presunto sistema binario , y el par tiene una separación angular de 0,2  segundos de arco.");
  la6 = new estrella(((1175*width)/1920),((465*height)/1080),5,"4 LACERTAE","4 Lacertae es una sola estrella en la constelación del norte Lacerta , ubicada a unos 1.900  años luz de distancia. Este objeto es visible a simple vista como una estrella de color blanco con una magnitud visual aparente de 4,55. Se acerca a la Tierra con una velocidad radial heliocéntrica de −26 km/s. Esta es una estrella supergigante. Tiene diez veces la masa del Sol y se ha expandido a unas 59 veces el radio del Sol . La estrella tiene alrededor de 25  millones de años y gira con una velocidad de rotación proyectada de 28 km/s.");
  //Lynx
  ly1 = new estrella(((688*width)/1920),((360*height)/1080),5,"2 LYNCIS","2 Lyncis es una estrella en la constelación de Lince de magnitud aparente +4,45. Se encuentra a 149 años luz del Sistema Solar. 2 Lyncis es una estrella blanca de la secuencia principal de tipo espectral A2V cuya temperatura efectiva es de 9210 K.Tiene un radio 2,2 veces más grande que el radio solar3​ y gira sobre sí misma con una velocidad de rotación de al menos 46 km/s.23 veces más luminosa que el Sol, su masa es de 2,3 masas solares, estimándose su edad en 320 millones de años.");  
  ly2 = new estrella(((663*width)/1920),((337*height)/1080),5,"15 LYNCIS","15 Lyncis es una estrella en la constelación boreal de Lince. De magnitud aparente +4,35, es la quinta estrella más brillante en la constelación después de α Lyncis, 38 Lyncis, 10 Ursae Majoris y Alsciaukat (31 Lyncis). Se encuentra a 170 años luz del Sistema Solar. 15 Lyncis es una gigante amarilla de tipo espectral G5III-IV con una temperatura efectiva entre 4850 y 5164 K. Es 40 veces más luminosa que el Sol y tiene un diámetro 8 veces más grande que el diámetro solar");
  ly3 = new estrella(((559*width)/1920),((330*height)/1080),5,"21 LYNCIS","Es una estrella en la constelación de Lince. Con magnitud aparente +4,61, es el octavo astro más brillante de la constelación. Se encuentra a 273 años luz del Sistema Solar. 21 Lyncis es una estrella blanca de la secuencia principal de tipo espectral A1V, semejante a Marfik (λ Ophiuchi) o a Merak (β Ursae Majoris). Tiene una temperatura efectiva de 9460 K y una luminosidad 108 veces superior a la luminosidad solar.Posee un radio —estimado mediante métodos indirectos— 2,6 veces más grande que el radio solar y gira sobre sí misma con una velocidad de rotación proyectada de 19 km/s, cifra muy baja para una estrella de sus características. ");
  ly4 = new estrella(((467*width)/1920),((277*height)/1080),5,"ALSCIAUKAT","Es la cuarta estrella más brillante de la constelación del Lince. Con magnitud aparente +4,25, es superada en brillo por α Lyncis, 38 Lyncis y 10 Ursae Majoris. Su nombre, proveniente del árabe (aš-šawkat), significa «la espina». Situada a 389 años luz del sistema solar, Alsciaukat es una gigante naranja de tipo espectral K4.5III. Sus características son similares a las de α Lyncis, si bien la diferente distancia que nos separa de ambas pone de manifiesto que no están relacionadas entre sí. ");
  ly5 = new estrella(((444*width)/1920),((226*height)/1080),5,"10 URSAE MAJORIS","Es una estrella de magnitud aparente +3,97, que a pesar de su nombre, se encuentra en la constelación del Lince. Cuando en el siglo XVIII se asignaron los números de Flamsteed se la encuadró en la constelación de la Osa Mayor; sin embargo, con los límites modernos de las constelaciones establecidos en la década de 1920, la estrella quedó finalmente integrada dentro de Lince. Actualmente es la tercera estrella más brillante de esta constelación después de α Lyncis y 38 Lyncis.");
  ly6 = new estrella(((399*width)/1920),((217*height)/1080),5,"HD 77912","HD 77912 es una sola estrella en la constelación norteña de Lynx . Es visible a simple vista con una magnitud visual aparente de 4,56. La estrella se encuentra a 650  años luz del Sol, según se determina a partir de su cambio de paralaje anual de5.0  mas . Se está alejando con una velocidad radial heliocéntrica de +16,6 km/s. HD 77912 tiene una velocidad peculiar de23.1+2.9−1.1 km/s , lo que puede marcarlo como una estrella fuera de control. Tiene 4,6 veces la masa del Sol y se ha expandido a 33 veces el radio del Sol . La estrella irradia 1.168 veces la luminosidad del Sol desde su fotosfera ampliada a una temperatura efectiva de 4.899 K.");
  ly7 = new estrella(((376*width)/1920),((195*height)/1080),5,"GAIA DR2","(810952158347151360) Magnitud: 3.81   Distancia: 117años luz");
  ly8 = new estrella(((330*width)/1920),((190*height)/1080),5,"ALPHA LYNCIS","Es la estrella más brillante de la constelación norteña de Lynx con una magnitud aparente de +3,13. Inusualmente, es la única estrella en la constelación que tiene una designación de Bayer . Según las mediciones de paralaje , esta estrella se encuentra a unos 203 años luz (62 parsecs ) de la Tierra. Esta es una estrella gigante que ha agotado el hidrógeno en su núcleo y se ha alejado de la secuencia principal . Se ha expandido a unas 55 veces el radio del Sol y emite aproximadamente 673 veces la luminosidad del Sol. ");
  //Fornax
  fo1 = new estrella(((720*width)/1920),((900*height)/1080),5,"BETA FORNACIS","Beta Fornacis es la designación de Bayer para una estrella solitaria en la constelación austral de Fornax . Es visible a simple vista con una magnitud visual aparente de 4,46. Basado en un cambio de paralaje anual de 18,89  mas , se encuentra a unos 173  años luz del Sol . A esa distancia, la magnitud visual se reduce por un factor de extinción interestelar de 0,1. Esta es una estrella gigante evolucionada de tipo G con una clasificación estelar de G8 III. Es un grupo gigante rojo , lo que significa que ha sufrido un destello de helio y actualmente está generando energía a través de la fusión de helio en su núcleo.");
  fo2 = new estrella(((663*width)/1920),((875*height)/1080),5,"GAIA DR2","(5059348952156075776) Magnitud: 3.7  Distancia: 45.5 años luz");
  //cygnux
  cy1 = new estrella(((1323*width)/1920),((535*height)/1080),5,"MU CYGNI","μ Cygni , latinizado como Mu Cygni , es un sistema estelar binario en la constelación norteña de Cygnus . Es visible a simple vista como un débil punto de luz con una magnitud visual aparente combinada de 4,49. El sistema está ubicado a 72  años luz de distancia del Sol, según el paralaje , y se aleja más con una velocidad radial de +17 km/s. El par tiene un período orbital de alrededor de 800 años, con un semieje mayor de5 ″ y una excentricidad en torno a 0,6. La primaria, con una magnitud aparente de 4,69, es una estrella de secuencia principal de tipo F con una clasificación estelar de F6V. Tiene un 35% más de masa que el Sol y un 188% del radio del Sol");
  cy2 = new estrella(((1369*width)/1920),((509*height)/1080),5,"ZETA CYGNI","Es la sexta estrella más brillante de la constelación de Cygnus con magnitud aparente +3,21. Aunque no tiene nombre propio habitual, esta estrella, junto a ρ Cygni y otras estrellas adyacentes más tenues, era conocida en China como Chay Foo, «el almacén de carros».Se encuentra a 151 años luz del sistema solar. Zeta Cygni es una gigante amarilla de tipo espectral G8III con una temperatura efectiva de 4980 K y una luminosidad equivalente a 119 soles. Tiene un radio 14,7 veces más grande que el radio solar y una masa aproximada de tres masas solares. Su edad se estima en 400 millones de años.");
  cy3 = new estrella(((1388*width)/1920),((474*height)/1080),5,"GIENNAH","Giennah es la tercera estrella más brillante de la constelación de Cygnus, y esta estrella se localiza la Nebulosa oscura «Saco de Carbón del norte». Situada a 72 años luz del Sistema Solar, Giennah es un sistema binario compuesto por dos estrellas muy distintas. La componente principal, Giennah A, es una gigante naranja de tipo espectral K0III, similar a Pólux (β Geminorum), con una temperatura superficial de 4725 K. Su diámetro es 12 veces mayor que el del Sol y tiene una luminosidad de 61 soles");
  cy4 = new estrella(((1377*width)/1920),((429*height)/1080),5,"SADR","Sadr, también escrito como Sadir o Sador, es el nombre de la estrella γ Cygni (γ Cyg / 37 Cygni), la segunda más brillante de la constelación del Cisne después de Deneb (α Cygni). Situada en el centro del asterismo de la Cruz del Norte, tiene magnitud aparente +2,23. Se encuentra a unos 1500 años luz de distancia del Sistema Solar. Sadr es una estrella supergigante amarilla de tipo espectral F8Ib, aproximadamente 65.000 veces más luminosa que el Sol, cuya temperatura superficial es de 6500 K. ");
  cy5 = new estrella(((1379*width)/1920),((381*height)/1080),5,"DELTA CYGNI","Delta Cygni es la cuarta estrella más brillante de la constelación de Cygnus con magnitud aparente +2,86. Aunque hoy no tiene nombre propio, antiguamente era conocida como Ruc —o Rukh— y Urakhga, ambos relacionados con Roc, un pájaro mítico de enorme tamaño y fuerza. A una distancia de 171 años luz del sistema solar, Delta Cygni es una sistema estelar con dos componentes bastante próximas entre sí y una tercera más alejada. La estrella visible es una subgigante blanca de tipo espectral B9.5IV y 9800 K de temperatura. Con una masa entre 3 y 3,3 masas solares, tiene un radio 4,7 veces más grande que el del Sol y es 180 veces más luminosa que este. ");
  cy6 = new estrella(((1329*width)/1920),((350*height)/1080),5,"IOTA 1 CYGNI","Iota 1 Cygni , latinizado de ι 1 Cygni , es un probable sistema de estrellas binarias en la constelación norteña de Cygnus , y está separado por menos de un grado de su vecino visual más brillante, Iota 2 Cygni . Está cerca del límite inferior de visibilidad a simple vista con una magnitud visual aparente de 5,75. El sistema está ubicado aproximadamente a 387  años luz de distancia según el paralaje , y se aleja cada vez más con unavelocidad radial de +2 km/s. ");
  cy7 = new estrella(((1320*width)/1920),((335*height)/1080),5,"KAPPA CYGNI","Tiene una magnitud visual aparente de 3,8, que es lo suficientemente brillante como para verse a simple vista. En la constelación, forma la punta del ala izquierda de Cygnus. El radiante de la lluvia de meteoritos menores Kappa Cygnids se encuentra a unos 5° al norte de esta estrella. El examen del espectro de esta estrella muestra que coincide con una clasificación estelar de G9 III, con la clase de luminosidad 'III' que revela que ha consumido el combustible de hidrógeno en su núcleo y se ha expandido a la etapa de estrella gigante de su evolución estelar .");
  cy8 = new estrella(((1318*width)/1920),((426*height)/1080),7,"DENEB","Deneb es el nombre propio de la estrella Alfa Cygni la más brillante de la constelación de Cygnus («El Cisne») y una de las más brillantes del cielo nocturno, con una magnitud aparente en banda B (filtro azul) igual a 1,34 y en banda V (filtro verde) igual a 1,25. Deneb es un tipo poco común de supergigante blanca de clase espectral A2Iae y una temperatura superficial de 8525 K.1La medida directa de su diámetro angular —0,0025 segundos de arco— permite calcular su tamaño, 210 veces el del Sol.");
  cy9 = new estrella(((1453*width)/1920),((425*height)/1080),5,"ETA CYGNI","Eta Cygni es una estrella en la constelación del Cisne de magnitud aparente +3,88. Se encuentra a 135 años luz de distancia del Sistema Solar. Eta Cygni es una gigante naranja de tipo espectral K0III con una temperatura efectiva de 4775 K. Es 54 veces más luminosa que el Sol y, como la mayor parte de las estrellas de nuestro entorno, es una estrella del disco fino.");
  cy10 = new estrella(((1553*width)/1920),((427*height)/1080),5,"GAIA DR2","(2026116260302988160) Magnitud: 2.42   Distancia: 327.8 años luz.");
  
  //Declaración lineas (constelaciones)
  //Orion
  l2 = new lineacos(c3.posXE(),c3.posYE(),c7.posXE(),c7.posYE(),1);
  l3 = new lineacos(c3.posXE(),c3.posYE(),c4.posXE(),c4.posYE(),1);
  l4 = new lineacos(c4.posXE(),c4.posYE(),c5.posXE(),c5.posYE(),1);
  l5 = new lineacos(c5.posXE(),c5.posYE(),c6.posXE(),c6.posYE(),1);
  l6 = new lineacos(c6.posXE(),c6.posYE(),c7.posXE(),c7.posYE(),1);
  l7 = new lineacos(c5.posXE(),c5.posYE(),c8.posXE(),c8.posYE(),1);
  l8 = new lineacos(c8.posXE(),c8.posYE(),c9.posXE(),c9.posYE(),1);
  l9 = new lineacos(c9.posXE(),c9.posYE(),c10.posXE(),c10.posYE(),1);
  l10 = new lineacos(c10.posXE(),c10.posYE(),c7.posXE(),c7.posYE(),1);
  l11 = new lineacos(c8.posXE(),c8.posYE(),c11.posXE(),c11.posYE(),1);
  l12 = new lineacos(c11.posXE(),c11.posYE(),c12.posXE(),c12.posYE(),1);
  l13 = new lineacos(c11.posXE(),c11.posYE(),c13.posXE(),c13.posYE(),1);
  l14 = new lineacos(c12.posXE(),c12.posYE(),c14.posXE(),c14.posYE(),1);
  l15 = new lineacos(c13.posXE(),c13.posYE(),c15.posXE(),c15.posYE(),1);
  l16 = new lineacos(c12.posXE(),c12.posYE(),c13.posXE(),c13.posYE(),1);
  l17 = new lineacos(c16.posXE(),c16.posYE(),c17.posXE(),c17.posYE(),1);
  l18 = new lineacos(c17.posXE(),c17.posYE(),c18.posXE(),c18.posYE(),1);
  l19 = new lineacos(c18.posXE(),c18.posYE(),c19.posXE(),c19.posYE(),1);
  l20 = new lineacos(c20.posXE(),c20.posYE(),c21.posXE(),c21.posYE(),1);
  l21 = new lineacos(c10.posXE(),c10.posYE(),c18.posXE(),c18.posYE(),1);
  l22 = new lineacos(c19.posXE(),c19.posYE(),c20.posXE(),c20.posYE(),1);
  //casiopeia
  l23 = new lineacos(c22.posXE(),c22.posYE(),c23.posXE(),c23.posYE(),1);
  l24 = new lineacos(c23.posXE(),c23.posYE(),c24.posXE(),c24.posYE(),1);
  l25 = new lineacos(c24.posXE(),c24.posYE(),c25.posXE(),c25.posYE(),1);
  l26 = new lineacos(c25.posXE(),c25.posYE(),c26.posXE(),c26.posYE(),1);
  //gemini
  gel1 = new lineacos(ge1.posXE(),ge1.posYE(),ge2.posXE(),ge2.posYE(),1);
  gel2 = new lineacos(ge2.posXE(),ge2.posYE(),ge5.posXE(),ge5.posYE(),1);
  gel3 = new lineacos(ge5.posXE(),ge5.posYE(),ge4.posXE(),ge4.posYE(),1);
  gel4 = new lineacos(ge4.posXE(),ge4.posYE(),ge3.posXE(),ge3.posYE(),1);
  gel5 = new lineacos(ge5.posXE(),ge5.posYE(),ge8.posXE(),ge8.posYE(),1);
  gel6 = new lineacos(ge6.posXE(),ge6.posYE(),ge8.posXE(),ge8.posYE(),1);
  gel7 = new lineacos(ge7.posXE(),ge7.posYE(),ge8.posXE(),ge8.posYE(),1);
  gel8 = new lineacos(ge8.posXE(),ge8.posYE(),ge17.posXE(),ge17.posYE(),1);
  gel9 = new lineacos(ge17.posXE(),ge17.posYE(),ge10.posXE(),ge10.posYE(),1);
  gel10 = new lineacos(ge10.posXE(),ge10.posYE(),ge9.posXE(),ge9.posYE(),1);
  gel11 = new lineacos(ge10.posXE(),ge10.posYE(),ge11.posXE(),ge11.posYE(),1);
  gel12 = new lineacos(ge10.posXE(),ge10.posYE(),ge12.posXE(),ge12.posYE(),1);
  gel13 = new lineacos(ge13.posXE(),ge13.posYE(),ge12.posXE(),ge12.posYE(),1);
  gel14 = new lineacos(ge12.posXE(),ge12.posYE(),ge14.posXE(),ge14.posYE(),1);
  gel15 = new lineacos(ge15.posXE(),ge15.posYE(),ge14.posXE(),ge14.posYE(),1);
  gel16 = new lineacos(ge16.posXE(),ge16.posYE(),ge15.posXE(),ge15.posYE(),1);
  //acuario
  acl1 = new lineacos(ac1.posXE(),ac1.posYE(),ac2.posXE(),ac2.posYE(),1);
  acl2 = new lineacos(ac2.posXE(),ac2.posYE(),ac3.posXE(),ac3.posYE(),1);
  acl3 = new lineacos(ac3.posXE(),ac3.posYE(),ac4.posXE(),ac4.posYE(),1);
  acl4 = new lineacos(ac4.posXE(),ac4.posYE(),ac5.posXE(),ac5.posYE(),1);
  acl5 = new lineacos(ac5.posXE(),ac5.posYE(),ac6.posXE(),ac6.posYE(),1);
  acl6 = new lineacos(ac6.posXE(),ac6.posYE(),ac7.posXE(),ac7.posYE(),1);
  acl7 = new lineacos(ac7.posXE(),ac7.posYE(),ac8.posXE(),ac8.posYE(),1);
  acl8 = new lineacos(ac8.posXE(),ac8.posYE(),ac9.posXE(),ac9.posYE(),1);
  acl9 = new lineacos(ac7.posXE(),ac7.posYE(),ac10.posXE(),ac10.posYE(),1);
  acl10 = new lineacos(ac10.posXE(),ac10.posYE(),ac11.posXE(),ac11.posYE(),1);
  acl11 = new lineacos(ac10.posXE(),ac10.posYE(),ac12.posXE(),ac12.posYE(),1);
  acl12 = new lineacos(ac12.posXE(),ac12.posYE(),ac13.posXE(),ac13.posYE(),1);
  acl13 = new lineacos(ac13.posXE(),ac13.posYE(),ac14.posXE(),ac14.posYE(),1);
  acl14 = new lineacos(ac14.posXE(),ac14.posYE(),ac15.posXE(),ac15.posYE(),1);
  //draco
  dral1 = new lineacos(dra1.posXE(),dra1.posYE(),dra2.posXE(),dra2.posYE(),1);
  dral2 = new lineacos(dra2.posXE(),dra2.posYE(),dra3.posXE(),dra3.posYE(),1);
  dral3 = new lineacos(dra3.posXE(),dra3.posYE(),dra4.posXE(),dra4.posYE(),1);
  dral4 = new lineacos(dra4.posXE(),dra4.posYE(),dra5.posXE(),dra5.posYE(),1);
  dral5 = new lineacos(dra5.posXE(),dra5.posYE(),dra6.posXE(),dra6.posYE(),1);
  dral6 = new lineacos(dra6.posXE(),dra6.posYE(),dra7.posXE(),dra7.posYE(),1);
  dral7 = new lineacos(dra7.posXE(),dra7.posYE(),dra8.posXE(),dra8.posYE(),1);
  dral8 = new lineacos(dra8.posXE(),dra8.posYE(),dra9.posXE(),dra9.posYE(),1);
  dral9 = new lineacos(dra9.posXE(),dra9.posYE(),dra10.posXE(),dra10.posYE(),1);
  dral10 = new lineacos(dra10.posXE(),dra10.posYE(),dra11.posXE(),dra11.posYE(),1);
  dral11 = new lineacos(dra11.posXE(),dra11.posYE(),dra12.posXE(),dra12.posYE(),1);
  dral12 = new lineacos(dra12.posXE(),dra12.posYE(),dra13.posXE(),dra13.posYE(),1);
  dral13 = new lineacos(dra13.posXE(),dra13.posYE(),dra14.posXE(),dra14.posYE(),1);
  dral14 = new lineacos(dra14.posXE(),dra14.posYE(),dra15.posXE(),dra15.posYE(),1);
  dral15 = new lineacos(dra15.posXE(),dra15.posYE(),dra12.posXE(),dra12.posYE(),1);
  //Aries
  arl1 = new lineacos(ar1.posXE(),ar1.posYE(),ar2.posXE(),ar2.posYE(),1);
  arl2 = new lineacos(ar2.posXE(),ar2.posYE(),ar3.posXE(),ar3.posYE(),1);
  arl3 = new lineacos(ar3.posXE(),ar3.posYE(),ar4.posXE(),ar4.posYE(),1);
  //Triangulum
  trl1 = new lineacos(tr1.posXE(),tr1.posYE(),tr2.posXE(),tr2.posYE(),1);
  trl2 = new lineacos(tr2.posXE(),tr2.posYE(),tr3.posXE(),tr3.posYE(),1);
  trl3 = new lineacos(tr3.posXE(),tr3.posYE(),tr1.posXE(),tr1.posYE(),1);
  //Lacerta
  lal1 = new lineacos(la1.posXE(),la1.posYE(),la2.posXE(),la2.posYE(),1);
  lal2 = new lineacos(la2.posXE(),la2.posYE(),la3.posXE(),la3.posYE(),1); 
  lal3 = new lineacos(la3.posXE(),la3.posYE(),la4.posXE(),la4.posYE(),1);
  lal4 = new lineacos(la4.posXE(),la4.posYE(),la5.posXE(),la5.posYE(),1);
  lal5 = new lineacos(la5.posXE(),la5.posYE(),la6.posXE(),la6.posYE(),1);
  lal6 = new lineacos(la6.posXE(),la6.posYE(),la3.posXE(),la3.posYE(),1);
  //Lynx
  lyl1 = new lineacos(ly1.posXE(),ly1.posYE(),ly2.posXE(),ly2.posYE(),1);
  lyl2 = new lineacos(ly2.posXE(),ly2.posYE(),ly3.posXE(),ly3.posYE(),1);
  lyl3 = new lineacos(ly3.posXE(),ly3.posYE(),ly4.posXE(),ly4.posYE(),1);
  lyl4 = new lineacos(ly4.posXE(),ly4.posYE(),ly5.posXE(),ly5.posYE(),1);
  lyl5 = new lineacos(ly5.posXE(),ly5.posYE(),ly6.posXE(),ly6.posYE(),1);
  lyl6 = new lineacos(ly6.posXE(),ly6.posYE(),ly7.posXE(),ly7.posYE(),1);
  lyl7 = new lineacos(ly7.posXE(),ly7.posYE(),ly8.posXE(),ly8.posYE(),1);
  //fornax
  fol1 = new lineacos(fo1.posXE(),fo1.posYE(),fo2.posXE(),fo2.posYE(),1);
  //Cygnus
  cyl1 = new lineacos(cy1.posXE(),cy1.posYE(),cy2.posXE(),cy2.posYE(),1);
  cyl2 = new lineacos(cy2.posXE(),cy2.posYE(),cy3.posXE(),cy3.posYE(),1);
  cyl3 = new lineacos(cy3.posXE(),cy3.posYE(),cy4.posXE(),cy4.posYE(),1);
  cyl4 = new lineacos(cy4.posXE(),cy4.posYE(),cy5.posXE(),cy5.posYE(),1);
  cyl5 = new lineacos(cy5.posXE(),cy5.posYE(),cy6.posXE(),cy6.posYE(),1);
  cyl6 = new lineacos(cy6.posXE(),cy6.posYE(),cy7.posXE(),cy7.posYE(),1);
  cyl7 = new lineacos(cy4.posXE(),cy4.posYE(),cy8.posXE(),cy8.posYE(),1);
  cyl8 = new lineacos(cy4.posXE(),cy4.posYE(),cy9.posXE(),cy9.posYE(),1);
  cyl9 = new lineacos(cy9.posXE(),cy9.posYE(),cy10.posXE(),cy10.posYE(),1);
    
    
  //Declaración de las costelaciones (Nombres)
  //Orion
  cst1 = new cost(c10.posXE(),c10.posYE()-((55*height)/1080),"ORION","Orión es una constelación prominente ubicada en el ecuador celeste y visible en todo el mundo. Es una de las constelaciones más conspicuas y reconocibles del cielo nocturno. Lleva el nombre de Orión , un cazador de la mitología griega. La representación más antigua conocida vinculada a la constelación de Orión es una talla de marfil de mamut prehistórico ( Auriñaciense ) encontrada en una cueva en el valle de Ach en Alemania Occidental en 1979. Los arqueólogos estiman que tiene entre 32.000 y 38.000 años.");
  //casiopea
  cst2 = new cost(c23.posXE(),c23.posYE()-((48*height)/1080),"CASIOPEA","Casiopea ( escucha ) es una constelación en el cielo del norte que lleva el nombre de la vanidosa reina Casiopea , madre de Andrómeda , en la mitología griega , que se jactaba de su belleza sin igual. Casiopea fue una de las 48 constelaciones enumeradas por el astrónomo griego del siglo II Ptolomeo , y sigue siendo una de las 88 constelaciones modernas en la actualidad. Es fácilmente reconocible por su distintiva forma de ' W ', formada por cinco estrellas brillantes. ");
  //gemini
  gec1 = new cost(ge7.posXE(),ge7.posYE()-((40*height)/1080),"GEMINIS","Géminis es una de las constelaciones del zodíaco y se encuentra en el hemisferio norte celeste . Fue una de las 48 constelaciones descritas por el astrónomo Ptolomeo en el siglo II d. C. , y sigue siendo una de las 88 constelaciones modernas en la actualidad. Su nombre en latín significa gemelos , y está asociado con los gemelos Cástor y Pólux en la mitología griega. La constelación contiene 85 estrellas visibles a simple vista. La estrella más brillante de Géminis es Pollux , y la segunda más brillante es Castor . La designación de Bayer de Castor como surgió porque Johann Bayer no distinguió cuidadosamente cuál de los dos era más brillante cuando asignó sus designaciones homónimas en 1603.");
  //acuario
  acc1 = new cost(ac7.posXE(),ac7.posYE()-((30*height)/1080),"ACUARIO","Acuario (el portador del agua o ánfora), es una de las 88 constelaciones reconocidas por la astronomía moderna, descrita por Claudio Ptolomeo. Su símbolo representa el flujo del agua. De todo el zodiaco, Acuario es una de las constelaciones reconocida con mayor antigüedad. Los sumerios le dieron este nombre a la constelación, en honor a su dios An, que derrama el agua de la inmortalidad sobre la Tierra. Se encuentra en una región comúnmente llamada el Mar o Aqua por la profusión de constelaciones acuáticas tales como Cetus, Piscis, Eridanus. Algunas veces el río Eridanus se representa como lo que derrama la vasija de Acuario. La constelación de Acuario es la décima más extensa, cubriendo más del 2,3 % del cielo nocturno.");
  //Draco
  drac1 = new cost(dra3.posXE(),dra3.posYE()-((30*height)/1080),"DRACO","Draco (el dragón) es una constelación del norte lejano, que es circumpolar para muchos observadores del hemisferio norte. Es una de las 88 constelaciones modernas, y una de las 48 constelaciones listadas por Ptolomeo. El polo norte de la eclíptica está en Draco. Aunque muy grande, Draco no tiene estrellas especialmente brillantes. La cabeza del dragón está representada por un cuadrilátero de estrellas situadas entre Hércules y la Osa Menor. ");
  //Aries
  arc1 = new cost(ar1.posXE()-((45*width)/1920),ar1.posYE()+((10*height)/1080),"ARIES","Aries es una de las constelaciones del zodiaco . Se encuentra en el hemisferio norte celeste entre Piscis al oeste y Tauro al este. El nombre Aries es latín para carnero. Es una de las 48 constelaciones descritas por el astrónomo Ptolomeo en el siglo II , y sigue siendo una de las 88 constelaciones modernas. Aries ha representado un carnero desde finales de la época babilónica. Antes de eso, las estrellas de Aries formaron un peón. Diferentes culturas han incorporado las estrellas de Aries en diferentes constelaciones, incluidos los inspectores gemelos en China y una marsopa en las Islas Marshall.");
  //Triangulum
  trc1 = new cost(tr1.posXE()-((120*width)/1920),tr2.posYE()-((10*height)/1080),"TRIANGULUM","Es una pequeña constelación en el cielo del norte. Su nombre en latín significa 'triángulo', derivado de sus tres estrellas más brillantes, que forman un triángulo largo y estrecho. Conocido por los antiguos babilonios y griegos, Triangulum fue una de las 48 constelaciones enumeradas por el astrónomo Ptolomeo del siglo II . Los cartógrafos celestes Johann Bayer y John Flamsteed catalogaron las estrellas de la constelación, dando a seis de ellas designaciones de Bayer.");
  //Lacerta
  lac1 = new cost(la4.posXE()-((100*width)/1920),la3.posYE()-((10*height)/1080),"LACERTA","Lacerta es una de las 88 constelaciones modernas definidas por la Unión Astronómica Internacional . Su nombre en latín significa lagarto . Una constelación pequeña y tenue, fue definida en 1687 por el astrónomo Johannes Hevelius . Sus estrellas más brillantes forman una forma de 'W' similar a la de Casiopea , por lo que a veces se la denomina 'Pequeña Casiopea'. Se encuentra entre Cygnus , Cassiopeia y Andromeda en la esfera celeste del norte . La parte norte se encuentra en la Vía Láctea ."); 
  //lynx
  lyc1 = new cost(ly4.posXE()+((10*width)/1920),ly5.posYE()+((30*height)/1080),"LINCE","Lynx es una constelación que lleva el nombre del animal , generalmente observada en el hemisferio norte celeste . La constelación fue introducida a finales del siglo XVII por Johannes Hevelius . Es una constelación tenue, con sus estrellas más brillantes formando una línea en zigzag. La gigante naranja Alpha Lyncis es la estrella más brillante de la constelación, y la estrella variable semirregular Y Lyncis es un objetivo para los astrónomos aficionados . Seis sistemas estelares han sido encontrados para contener planetas . Los de 6 Lyncis y HD 75898 fueron descubiertos por elmétodo Doppler ; las de XO-2 , XO-4 , XO-5 y WASP-13 fueron observadas a su paso por delante de la estrella anfitriona .");
  //Fornax
  foc1 = new cost(fo2.posXE()+((30*width)/1920),fo2.posYE()-((10*height)/1080),"HORNO (FORNAX)","Fornax es una constelación en el hemisferio sur celeste , parcialmente rodeada por el río celestial Eridanus . Su nombre en latín significa horno. Fue nombrada por el astrónomo francés Nicolas Louis de Lacaille en 1756. Fornax es una de las 88 constelaciones modernas. Es la 41ª constelación más grande del cielo nocturno , ocupando un área de 398 grados cuadrados. Se ubica en el primer cuadrante del hemisferio sur (SQ1) y se puede observar en latitudes entre +50° y -90° durante el mes de diciembre.");
  //Cygnus
  cyc1 = new cost(cy9.posXE()-((40*width)/1920),cy6.posYE()+((20*height)/1080),"CISNE","Cygnus (el cisne) es una constelación del hemisferio norte que atraviesa la Vía LácteA. Cygnus es una de las constelaciones más reconocibles del verano y el otoño del norte, y presenta un asterismo prominente conocido como la Cruz del Norte (en contraste con la Cruz del Sur ). Cygnus estaba entre las 48 constelaciones enumeradas por el astrónomo Ptolomeo del siglo II , y sigue siendo una de las 88 constelaciones modernas.");
  
  //Declaracion estrellas solitarias
  c1 = new estrella(((566*width)/1920),((776*height)/1080),5,"ZAURAK","Zaurak es la tercera estrella más brillante de la constelación de Erídano. El nombre Zaurak, escrito a veces como Zaurac, es de origen árabe y significa «el barco», De magnitud aparente +2,98, Zaurak se encuentra —de acuerdo a la nueva reducción de los datos de paralaje de Hipparcos— a 203 años luz de distancia del Sistema Solar. Es una gigante roja de tipo espectral M1IIIb cuya temperatura superficial es de 3811 K. Su luminosidad bolométrica está comprendida entre 860 y 1258 soles");
  c2 = new estrella(((846*width)/1920),((833*height)/1080),5,"UPSILON CETI","Upsilon Ceti , latinizado de υ Ceti, es una estrella solitaria en la constelación ecuatorial de Cetus . Es visible a simple vista con una magnitud visual aparente de 3,95. Basado en un cambio de paralaje anual de 11,14  mas , se encuentra a unos 293  años luz del Sol. Esta estrella fue designada Upsilon Ceti por Bayer y 59 Ceti por Flamsteed . Flamsteed también le dio la designación Upsilon 2 Ceti para distinguirlo de 56 Ceti , al que llamó Upsilon 1 . Sin embargo, las designaciones en superíndice de Flamsteed no son de uso general en la actualidad.");
  es1 = new estrella(((831*width)/1920),((883*height)/1080),5,"NU FORNACIS","Es una única estrella variable en la constelación austral de Fornax . Es de color blanco azulado y apenas visible a simple vista con una magnitud visual aparente que fluctúa alrededor de 4,69. Este cuerpo se encuentra aproximadamente a 370  años luz de distancia del Sol según el paralaje , y se aleja más con una velocidad radial de +18,5 km/s. Es un miembro candidato de la corriente estelar Piscis-Eridanus, lo que sugiere una edad de 120 millones de años o menos. ");
  es2 = new estrella(((440*width)/1920),((798*height)/1080),5,"54 ERIDANI","54 Eridani es un presunto sistema astrométrico binario, ubicado a unos 400  años luz del Sol en la constelación ecuatorial de Eridanus . Es visible a simple vista como una estrella tenue de color rojizo con una magnitud visual aparente de referencia de 4,32. El objeto se acerca a la Tierra con una velocidad radial heliocéntrica de −33 km/s. El componente visible es una estrella gigante roja envejecida , actualmente en la rama gigante asintótica , con una clasificación estelar de M3/4 III. Es una estrella variable semirregular del subtipo SRb, que varía en magnitud desde 4,28 hasta 4,36.");
  
  //Declaracion de planetas, lunas, etc
  marte = new estrella(((523*width)/1920),((517*height)/1080),5,"MARTE","Marte es el cuarto planeta en orden de distancia al Sol y el segundo más pequeño del sistema solar, después de Mercurio. Recibió su nombre en homenaje al dios de la guerra de la mitología romana (Ares en la mitología griega), y también es conocido como «el planeta rojo» debido a la apariencia rojiza que le confiere el óxido de hierro predominante en su superficie. Gravedad:  3.721 m/s² - Radio:  3,389.5 km - Masa: Masa: 6.39 × 10^23 kg - Superficie: 144.8 millones km² - Distancia desde el Sol: 227.9 millones km - Duración del día: 1d 0h 37m - Lunas: Fobos, Deimos");
  jupiter = new estrella(((1135*width)/1920),((724*height)/1080),7,"JUPITER","Júpiter es el planeta más grande del sistema solar y el quinto en orden de lejanía al Sol.​ Es un gigante gaseoso que forma parte de los denominados planetas exteriores. Recibe su nombre del dios romano Júpiter. Gravedad: 24.79 m/s² - Radio: 69,911 km - Masa: 1.898 × 10^27 kg - Superficie: 61.42 miles de millones km² - Duración del día: 0d 9h 56m - Edad: 4.603 miles de millones años - Lunas: Europa, Ío, Ganimedes, Calisto, Amaltea, Adrastea, etc");
  saturno = new estrella(((1516*width)/1920),((776*height)/1080),6,"SATURNO","Saturno es el sexto planeta del sistema solar contando desde el Sol, el segundo en tamaño y masa después de Júpiter y el único con un sistema de anillos visible desde la Tierra. Su nombre proviene del dios romano Saturno. Forma parte de los denominados planetas exteriores o gaseosos. Edad: 4.503 miles de millones años - Densidad: 687 kg/m³ - Gravedad: 10.44 m/s² - Radio: 58,232 km - Magnitud Aparente (V): -0.24 - Lunas: Titán, Encélado, Mimas, Dione, Jápeto, Tetis, Hiperión, etc");
  luna = new estrella(((983*width)/1920),((707*height)/1080),9,"LUNA","La Luna es el único satélite natural de la Tierra. Con un diámetro ecuatorial de 3474.8 km, es el quinto satélite más grande del sistema solar, mientras que en cuanto al tamaño proporcional respecto a su planeta es el satélite más grande: un cuarto del diámetro de la Tierra y 1/81 de su masa. Edad: 4.53 miles de millones años - Densidad: 3.34 g/cm³ - Distancia a la Tierra: 384,400 km - Gravedad: 1.62 m/s² - Radio: 1,737.4 km - Período orbital: 27 días - Magnitud Aparente (V): -12.74   (Dato Curioso: La luna tiene dueño y es Chileno Jenaro Gajardo Vera)");
  
  //Declaracion botones menu
  game = new botonr((860*width)/1920,(480*height)/1080,(200*width)/1920,(50*height)/1080,10);
  creditos = new botonr((860*width)/1920,(480*height)/1080+((50*height)/1080)+(height/40),(200*width)/1920,(50*height)/1080,10);
  menuG = new botonr(width/40, (60*height)/1080 ,width/20,height/30,10);
  menuCs = new botonr(width/40, (60*height)/1080,width/20,height/30,10);
  //Declaracion texto botones
  gtxt = new texto((895*width)/1920,(475*height)/1080,((170*width)/1920),((170*height)/1920), "Juego",(50*width)/1920);
  ctxt = new texto((870*width)/1920,(475*height)/1080+((50*height)/1080)+(height/40),((170*width)/1920),((170*height)/1920), "Creditos",(50*width)/1920);
  mgtxt = new texto((width/40)+(10*width)/1920,(63*height)/1080,((170*width)/1920),((170*height)/1920), "Menu",(30*width)/1920);
  mctxt = new texto(((46*width)/1920),((515*height)/1080),((170*width)/1920),((170*height)/1920), "Menu",(50*width)/1920);
  
  //Declaracion Textos y cuadro creditos
  titC = new texto((width/2)-((140*width)/1920),(height/2)-((300*height)/1080),((400*width)/1920),((170*height)/1920), "Creditos",(80*width)/1920);
  nom = new texto((width/2)-((240*width)/1920),(height/2)-((180*height)/1080),(550*width)/1920,(540*height)/1080, "  Jose Emanuel Toro Medina  Shaiel Mateo Jimenez Posada",(40*width)/1920);
  cred = new texto((width/2)-((280*width)/1920),(height/2)-((30*height)/1080),(550*width)/1920,(540*height)/1080, "Fuente Musica                                      Interstellar Main Theme - Extra Extended - Soundtrack by Hans Zimmer                            Fuente Imagenes                                            Pixabay (Pagina imagenes de uso libre)",(30*width)/1920);  
  rc2 = new rectan((width/2)-((300*width)/1920),(height/2)-((200*height)/1080),(600*width)/1920,(500*height)/1080,(color(100,80)),6,50);   
  
  //Declaración botones de forma rect
  r1 = new botonr(width/40, height-((60*height)/1080),width/20,height/30,10);
  r2 = new botonr((width/40)+(width/20)+((10*width)/1920), height-((60*height)/1080),width/20,height/30,10);
  r3 = new botonr((width/40)+(width/20)+(width/20)+((20*width)/1920), height-((60*height)/1080),width/20,height/30,10);
  //Declaracion texto botones
  txt1 = new texto((width/40)+((5*width)/1920),(height-((60*height)/1080))+((5*height)/1080),width/20,height/30, "Constelacion",(16*width)/1920);
  txt2 = new texto((width/40)+(width/20)+((10*width)/1920)+((width/20/6)),(height-((60*height)/1080))+((5*height)/1080),width/20,height/30, "Fondo",(16*width)/1920);
  txt3 = new texto((width/40)+(width/20)+(width/20)+((20*width)/1920)+(width/20/6),(height-((60*height)/1080))+((5*height)/1080),width/20,height/30, "Nombres",(16*width)/1920);
  
  //Declaración de las imagenes
  im1 = new imagen(sound,width-((50*width)/1920),height-((50*height)/1080),30,30);
  im2 = new imagen(fondo,0,0,width+((1280*width)/1920),height+((720*height)/1080));
  
  //Declaracion Texto UniverEye
  txt4 = new texto(((width)-((220*width)/1920)),((10*height)/1080),(((width/5)*width)/1920),(((height/8)*height)/1080), "UniversEye",(40*width)/1920);
  unM = new texto((790*width)/1920,(380*height)/1080,((500*width)/1920),((500*height)/1080), "UniversEye",(80*width)/1920);  
  //Puntos Cardinales
  txt5 = new texto(((935*width)/1920),((25*height)/1080),((170*width)/1920),((170*height)/1920), "N",(50*width)/1920);
  txt6 = new texto(((1823*width)/1920),((515*height)/1080),((170*width)/1920),((170*height)/1920), "W",(50*width)/1920);
  txt7 = new texto(((935*width)/1920),((1000*height)/1080),((170*width)/1920),((170*height)/1920), "S",(50*width)/1920);
  txt8 = new texto(((46*width)/1920),((515*height)/1080),((170*width)/1920),((170*height)/1920), "E",(50*width)/1920);
  //Declaración botones de la forma circular 
  bc1 = new botonc(width-((34*width)/1920),height-((34*height)/1080),30);
  
  //Declaración de objetos de la forma rect
  rc1 = new rectan((width-(width/8)-((10*width)/1920)),(height/4-((10*height)/1080)),(width/8),(height/2),(color(50,50,50,80)),3,3);
  
  //Declaracion de objetos de la forma ellipse
  cir1 = new ellipsec(width/2,height/2,width-((60*width)/1920),height-((36*height)/1080),color(255,255,255,0),color(255,255,255,200),1);
  
  sonido.play();
  
}

void draw(){
  if (estG == false && estC == false){
     background(0);
       for (int x=0; x<101;x++){
        noStroke();
        fill(random(100,200),255);
        ellipse(random(width),random(height),2,2);
      }    
    //Titulo
    unM.escribirTxt(#81B8FF);
    //Botones Menu  
    game.dibBtnRN();
    creditos.dibBtnRN();
    //Texto Botones menu
    gtxt.escribirTxt(255);
    ctxt.escribirTxt(255);  
    im1.dibImagen();
  }
  
  else if (estC == true && estReturn == false){
     background(0);
       for (int x=0; x<101;x++){
        noStroke();
        fill(random(100,200),255);
        ellipse(random(width),random(height),2,2);
      }    
      rc2.dibRectN();
      im1.dibImagen();
      menuCs.dibBtnRN();   
      mgtxt.escribirTxt(255);     
      nom.escribirTxt(255);
      cred.escribirTxt(255);
      titC.escribirTxt(#81B8FF); 
  }
  
  else if (estG == true && estReturn == false){ 
     background(0);    
     im2.dibImagenEst();
     textFont(fuente);
       for (int x=0; x<101;x++){
        noStroke();
        fill(random(100,200),255);
        ellipse(random(width),random(height),1,1);
      }
      //Boton Menu Regreso
      menuG.dibBtnRN();   
      mgtxt.escribirTxt(255);      
      
      cir1.ellDraw();
      
      //Botones
      r1.dibBtnR();
      r2.dibBtnR();
      r3.dibBtnR();
      //TextoBtn
      txt1.escribirTxtBtn();
      txt2.escribirTxtBtn();
      txt3.escribirTxtBtn();
      
      im1.dibImagen();
      
      //TextoUniverEye
      txt4.escribirTxt(#00D7FF);
      
      //Cardinales
      txt5.escribirTxt(#BC0000);
      txt6.escribirTxt(#BC0000);
      txt7.escribirTxt(#BC0000);
      txt8.escribirTxt(#BC0000);
      
      //DescripcionEstrella
      //Orion
      c3.desEstrella();
      c4.desEstrella();
      c5.desEstrella();
      c6.desEstrella();
      c7.desEstrella();
      c8.desEstrella();
      c9.desEstrella();
      c10.desEstrella();
      c11.desEstrella();
      c12.desEstrella();
      c13.desEstrella();
      c14.desEstrella();
      c15.desEstrella();
      c16.desEstrella();
      c17.desEstrella();
      c18.desEstrella();
      c19.desEstrella();
      c20.desEstrella();
      c21.desEstrella();
      //CASIOPEA
      c22.desEstrella();
      c23.desEstrella();
      c24.desEstrella();
      c25.desEstrella();
      c26.desEstrella();
      //Gemini
      ge1.desEstrella();
      ge2.desEstrella();
      ge3.desEstrella();
      ge4.desEstrella();
      ge5.desEstrella();
      ge6.desEstrella();
      ge7.desEstrella();
      ge8.desEstrella();
      ge9.desEstrella();
      ge10.desEstrella();
      ge11.desEstrella();
      ge12.desEstrella();
      ge13.desEstrella();
      ge14.desEstrella();
      ge15.desEstrella();
      ge16.desEstrella();
      ge17.desEstrella();
      //Acuario
      ac1.desEstrella();
      ac2.desEstrella();
      ac3.desEstrella();
      ac4.desEstrella();
      ac5.desEstrella();
      ac6.desEstrella();
      ac7.desEstrella();
      ac8.desEstrella();
      ac9.desEstrella();
      ac10.desEstrella();
      ac11.desEstrella();
      ac12.desEstrella();
      ac13.desEstrella();
      ac14.desEstrella();
      ac15.desEstrella();
      //Draco
      dra1.desEstrella();
      dra2.desEstrella();
      dra3.desEstrella();
      dra4.desEstrella();
      dra5.desEstrella();
      dra6.desEstrella();
      dra7.desEstrella();
      dra8.desEstrella();
      dra9.desEstrella();
      dra10.desEstrella();
      dra11.desEstrella();
      dra12.desEstrella();
      dra13.desEstrella();
      dra14.desEstrella();
      dra15.desEstrella();
      //Aries
      ar1.desEstrella();
      ar2.desEstrella();
      ar3.desEstrella();
      ar4.desEstrella();  
      //Triangulum
      tr1.desEstrella();
      tr2.desEstrella();
      tr3.desEstrella();
      //Lacerta
      la1.desEstrella();
      la2.desEstrella();
      la3.desEstrella();
      la4.desEstrella();
      la5.desEstrella();
      la6.desEstrella();
      //Lynx
      ly1.desEstrella();
      ly2.desEstrella();
      ly3.desEstrella();
      ly4.desEstrella();
      ly5.desEstrella();
      ly6.desEstrella();
      ly7.desEstrella();
      ly8.desEstrella();   
      //Fornax
      fo1.desEstrella();
      fo2.desEstrella();
      //Cygnu
      cy1.desEstrella();
      cy2.desEstrella();
      cy3.desEstrella();
      cy4.desEstrella();
      cy5.desEstrella();
      cy6.desEstrella();
      cy7.desEstrella();
      cy8.desEstrella();
      cy9.desEstrella();
      cy10.desEstrella();
      
      //Dib Linea Cos 
      //Orion
      l2.dibLinea();
      l3.dibLinea();
      l4.dibLinea();
      l5.dibLinea();
      l6.dibLinea();
      l7.dibLinea();
      l8.dibLinea();
      l9.dibLinea();
      l10.dibLinea();
      l11.dibLinea();
      l12.dibLinea();
      l13.dibLinea();
      l14.dibLinea();
      l15.dibLinea();
      l16.dibLinea();
      l17.dibLinea();
      l18.dibLinea();
      l19.dibLinea();
      l20.dibLinea();
      l21.dibLinea();
      l22.dibLinea();
      //casiopea
      l23.dibLinea();
      l24.dibLinea();
      l25.dibLinea();
      l26.dibLinea();
      //gemini
      gel2.dibLinea();
      gel3.dibLinea();
      gel4.dibLinea();
      gel5.dibLinea();
      gel6.dibLinea();
      gel7.dibLinea();
      gel8.dibLinea();
      gel9.dibLinea();
      gel10.dibLinea();
      gel11.dibLinea();
      gel12.dibLinea();
      gel13.dibLinea();
      gel14.dibLinea();
      gel15.dibLinea();
      gel16.dibLinea();
      gel1.dibLinea();
      //acuario
      acl1.dibLinea();
      acl2.dibLinea();
      acl3.dibLinea();
      acl4.dibLinea();
      acl5.dibLinea();
      acl6.dibLinea();
      acl7.dibLinea();
      acl8.dibLinea();
      acl9.dibLinea();
      acl10.dibLinea();
      acl11.dibLinea();
      acl12.dibLinea();
      acl13.dibLinea();
      acl14.dibLinea();
      //draco
      dral1.dibLinea();
      dral2.dibLinea();
      dral3.dibLinea();
      dral4.dibLinea();
      dral5.dibLinea();
      dral6.dibLinea();
      dral7.dibLinea();
      dral8.dibLinea();
      dral9.dibLinea();
      dral10.dibLinea();
      dral11.dibLinea();
      dral12.dibLinea();
      dral13.dibLinea();
      dral14.dibLinea();
      dral15.dibLinea();
      //Aries
      arl1.dibLinea();
      arl2.dibLinea();
      arl3.dibLinea();
      //Triangulum
      trl1.dibLinea();
      trl2.dibLinea();
      trl3.dibLinea();
      //Lacerta
      lal1.dibLinea();
      lal2.dibLinea();
      lal3.dibLinea();
      lal4.dibLinea();
      lal5.dibLinea();
      lal6.dibLinea();
      //lynx
      lyl1.dibLinea();
      lyl2.dibLinea();
      lyl3.dibLinea();
      lyl4.dibLinea();
      lyl5.dibLinea();
      lyl6.dibLinea();
      lyl7.dibLinea();
      //Fornax
      fol1.dibLinea();
      //Cygnus
      cyl1.dibLinea();
      cyl2.dibLinea();
      cyl3.dibLinea();
      cyl4.dibLinea();
      cyl5.dibLinea();
      cyl6.dibLinea();
      cyl7.dibLinea();
      cyl8.dibLinea();
      cyl9.dibLinea();
      
      //Dibujar Estrellas
      //Orion
      c3.dibEstrella();
      c4.dibEstrella(); 
      c5.dibEstrella();
      c6.dibEstrella();      
      c7.dibEstrella(); 
      c8.dibEstrella();
      c9.dibEstrella();  
      c10.dibEstrella(); 
      c11.dibEstrella();
      c12.dibEstrella();
      c13.dibEstrella(); 
      c14.dibEstrella();
      c15.dibEstrella();      
      c16.dibEstrella(); 
      c17.dibEstrella();
      c18.dibEstrella();
      c19.dibEstrella();
      c20.dibEstrella();
      c21.dibEstrella();
      //CASIOPEA
      c22.dibEstrella();
      c23.dibEstrella();
      c24.dibEstrella();
      c25.dibEstrella();
      c26.dibEstrella();
      //Gemini
      ge1.dibEstrella();
      ge2.dibEstrella();
      ge3.dibEstrella();
      ge4.dibEstrella();
      ge5.dibEstrella();
      ge6.dibEstrella();
      ge7.dibEstrella();
      ge8.dibEstrella();
      ge9.dibEstrella();
      ge10.dibEstrella();
      ge11.dibEstrella();
      ge12.dibEstrella();
      ge13.dibEstrella();
      ge14.dibEstrella();
      ge15.dibEstrella();
      ge16.dibEstrella();
      ge17.dibEstrella();
      //acuario
      ac1.dibEstrella();
      ac2.dibEstrella();
      ac3.dibEstrella();
      ac4.dibEstrella();
      ac5.dibEstrella();
      ac6.dibEstrella();
      ac7.dibEstrella();
      ac8.dibEstrella();
      ac9.dibEstrella();
      ac10.dibEstrella();
      ac11.dibEstrella();
      ac12.dibEstrella();
      ac13.dibEstrella();
      ac14.dibEstrella();
      ac15.dibEstrella();     
      //draco
      dra1.dibEstrella();
      dra2.dibEstrella();
      dra3.dibEstrella();
      dra4.dibEstrella();
      dra5.dibEstrella();
      dra6.dibEstrella();
      dra7.dibEstrella();
      dra8.dibEstrella();
      dra9.dibEstrella();
      dra10.dibEstrella();
      dra11.dibEstrella();
      dra12.dibEstrella();
      dra13.dibEstrella();
      dra14.dibEstrella();
      dra15.dibEstrella();   
      //Aries
      ar1.dibEstrella();
      ar2.dibEstrella();
      ar3.dibEstrella();
      ar4.dibEstrella();      
      //Triangulum
      tr1.dibEstrella();
      tr2.dibEstrella();
      tr3.dibEstrella();
      //Lacerta
      la1.dibEstrella();
      la2.dibEstrella();
      la3.dibEstrella();
      la4.dibEstrella();
      la5.dibEstrella();
      la6.dibEstrella();
      //Lynx
      ly1.dibEstrella();
      ly2.dibEstrella();
      ly3.dibEstrella();
      ly4.dibEstrella();
      ly5.dibEstrella();
      ly6.dibEstrella();
      ly7.dibEstrella();
      ly8.dibEstrella();
      //fornax
      fo1.dibEstrella();
      fo2.dibEstrella();
      //Cygnus
      cy1.dibEstrella();
      cy2.dibEstrella();
      cy3.dibEstrella();
      cy4.dibEstrella();
      cy5.dibEstrella();
      cy6.dibEstrella();
      cy7.dibEstrella();
      cy8.dibEstrella();
      cy9.dibEstrella();
      cy10.dibEstrella();
      
      //Estrellas Solitarias
      c1.dibCuCel(color(#F2E673)); 
      c2.dibCuCel(color(#F2E673));
      es1.dibCuCel(color(#8CF0E6));
      es2.dibCuCel(color(#F2E673));
      
      //Descripcion estrellas solitarias
      c1.desEstrella();
      c2.desEstrella();
      es1.desEstrella();
      es2.desEstrella();
   
      //Planetas,lunas,etc dibujar
      marte.dibCuCel(color(#E36F27)); 
      jupiter.dibCuCel(color(#905E4A));
      saturno.dibCuCel(color(#AD7863));
      luna.dibCuCel(color(#B4B4B4));
      
      //Descripcion planetas, lunas , etc
      marte.desEstrella();
      jupiter.desEstrella();
      saturno.desEstrella();
      luna.desEstrella();
   
   
      //Nombre Constelacion
      //Orion
      cst1.nomCos();
      //casiopea
      cst2.nomCos();
      //gemini
      gec1.nomCos();
      //acuario
      acc1.nomCos();   
      //draco
      drac1.nomCos();
      //Aries
      arc1.nomCos();
      //Triangulum
      trc1.nomCos();
      //Lacerta
      lac1.nomCos();
      //Lynx
      lyc1.nomCos();
      //fornax
      foc1.nomCos();
      //Cygnus
      cyc1.nomCos();
      
      //Descripción constelacion
      //Orion
      cst1.desCos();
      //casiopea
      cst2.desCos();
      //gemini
      gec1.desCos();
      //acuario
      acc1.desCos();
      //draco
      drac1.desCos(); 
      //Aries
      arc1.desCos();
      //Triangulum
      trc1.desCos();
      //Lacerta
      lac1.desCos();
      //lynx
      lyc1.desCos();
      //fornax
      foc1.desCos();
      //Cygnus
      cyc1.desCos();
      
      rc1.dibRect();
      
      //Posicion puntero para ubiacion estrellas
      /*px = mouseX;
      py = mouseY;
      textSize(20);
      text(px,width-100,20);
      text(py,width-100,40);*/
  }
      delay(150); 
}

void mousePressed(){
  estBtn = false;
  estReturn = false;
  if (bc1.clickedBtC(mouseX,mouseY) == true){
    if (sonido.isPlaying()){
      sonido.pause();
    }
    else{
      sonido.play();
    }
  }
  
  if (estG==false && estC==false){
    if (game.clickedBtRN(mouseX,mouseY)==true){
      estG=true;
      estC=false;
    }
    if (creditos.clickedBtRN(mouseX,mouseY)==true){
      estG=false;
      estC=true;
    }
  }
  if (estC == true){
    if (menuCs.clickedBtRN(mouseX,mouseY)==true){
      estReturn = true;
      estG = false;
      estC = false;      
    }
  }
  
  //Evaluar si se esta en el Juego 
  if (estG == true){
  if (menuG.clickedBtRN(mouseX,mouseY)==true){
    estReturn = true;
    estG = false;
    estC = false;
  }
  
  //Evaluar cuadro de información (se hace por ambas direcciones para que no queden superpuestos)
  //Estrellas
  //Orion
  if(estReturn == false){
  if (c3.clickedEs(mouseX,mouseY) == true || c4.clickedEs(mouseX,mouseY) == true || c5.clickedEs(mouseX,mouseY) == true || 
  c6.clickedEs(mouseX,mouseY) == true || c7.clickedEs(mouseX,mouseY) == true || c8.clickedEs(mouseX,mouseY) == true || 
  c9.clickedEs(mouseX,mouseY) == true || c10.clickedEs(mouseX,mouseY) == true || c11.clickedEs(mouseX,mouseY) == true || 
  c12.clickedEs(mouseX,mouseY) == true || c13.clickedEs(mouseX,mouseY) == true ||
  c14.clickedEs(mouseX,mouseY) == true || c15.clickedEs(mouseX,mouseY) == true || c16.clickedEs(mouseX,mouseY) == true ||
  c17.clickedEs(mouseX,mouseY) == true || c18.clickedEs(mouseX,mouseY) == true || c19.clickedEs(mouseX,mouseY) == true
  || c20.clickedEs(mouseX,mouseY) == true || c21.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (c21.clickedEs(mouseX,mouseY) == true || c20.clickedEs(mouseX,mouseY) == true || c19.clickedEs(mouseX,mouseY) == true ||
  c18.clickedEs(mouseX,mouseY) == true || c17.clickedEs(mouseX,mouseY) == true || c16.clickedEs(mouseX,mouseY) == true ||
  c15.clickedEs(mouseX,mouseY) == true || c14.clickedEs(mouseX,mouseY) == true || c13.clickedEs(mouseX,mouseY) == true ||
  c12.clickedEs(mouseX,mouseY) == true || c11.clickedEs(mouseX,mouseY) == true || c10.clickedEs(mouseX,mouseY) == true ||
  c9.clickedEs(mouseX,mouseY) == true || c8.clickedEs(mouseX,mouseY) == true || c7.clickedEs(mouseX,mouseY) == true ||
  c6.clickedEs(mouseX,mouseY) == true || c5.clickedEs(mouseX,mouseY) == true || c4.clickedEs(mouseX,mouseY) == true ||
  c3.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  
  //Casiopeia
  if (c22.clickedEs(mouseX,mouseY) == true || c23.clickedEs(mouseX,mouseY) == true || c24.clickedEs(mouseX,mouseY) == true || 
  c25.clickedEs(mouseX,mouseY) == true || c26.clickedEs(mouseX,mouseY) == true ){
    rc1.estR(true);
    estBtn = true;
  }
  if (c26.clickedEs(mouseX,mouseY) == true || c25.clickedEs(mouseX,mouseY) == true || c24.clickedEs(mouseX,mouseY) == true || 
  c23.clickedEs(mouseX,mouseY) == true || c22.clickedEs(mouseX,mouseY) == true ){
    rc1.estR(true);
    estBtn = true;
  }  
  
  //Gemini
  if (ge1.clickedEs(mouseX,mouseY) == true || ge2.clickedEs(mouseX,mouseY) == true || ge3.clickedEs(mouseX,mouseY) == true || 
  ge4.clickedEs(mouseX,mouseY) == true || ge5.clickedEs(mouseX,mouseY) == true || ge6.clickedEs(mouseX,mouseY) == true || 
  ge7.clickedEs(mouseX,mouseY) == true || ge8.clickedEs(mouseX,mouseY) == true || ge9.clickedEs(mouseX,mouseY) == true || 
  ge10.clickedEs(mouseX,mouseY) == true || ge11.clickedEs(mouseX,mouseY) == true ||
  ge12.clickedEs(mouseX,mouseY) == true || ge13.clickedEs(mouseX,mouseY) == true || ge14.clickedEs(mouseX,mouseY) == true ||
  ge15.clickedEs(mouseX,mouseY) == true || ge16.clickedEs(mouseX,mouseY) == true || ge17.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (ge17.clickedEs(mouseX,mouseY) == true || ge16.clickedEs(mouseX,mouseY) == true || ge15.clickedEs(mouseX,mouseY) == true || ge14.clickedEs(mouseX,mouseY) == true ||
  ge13.clickedEs(mouseX,mouseY) == true || ge12.clickedEs(mouseX,mouseY) == true || ge11.clickedEs(mouseX,mouseY) == true ||
  ge10.clickedEs(mouseX,mouseY) == true || ge9.clickedEs(mouseX,mouseY) == true || ge8.clickedEs(mouseX,mouseY) == true ||
  ge7.clickedEs(mouseX,mouseY) == true || ge6.clickedEs(mouseX,mouseY) == true || ge5.clickedEs(mouseX,mouseY) == true ||
  ge4.clickedEs(mouseX,mouseY) == true || ge3.clickedEs(mouseX,mouseY) == true || ge2.clickedEs(mouseX,mouseY) == true ||
  ge1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }  
  
  //acuario
  if (ac1.clickedEs(mouseX,mouseY) == true || ac2.clickedEs(mouseX,mouseY) == true || ac3.clickedEs(mouseX,mouseY) == true || 
  ac4.clickedEs(mouseX,mouseY) == true || ac5.clickedEs(mouseX,mouseY) == true || ac6.clickedEs(mouseX,mouseY) == true || 
  ac7.clickedEs(mouseX,mouseY) == true || ac8.clickedEs(mouseX,mouseY) == true || ac9.clickedEs(mouseX,mouseY) == true || 
  ac10.clickedEs(mouseX,mouseY) == true || ac11.clickedEs(mouseX,mouseY) == true ||
  ac12.clickedEs(mouseX,mouseY) == true || ac13.clickedEs(mouseX,mouseY) == true || ac14.clickedEs(mouseX,mouseY) == true ||
  ac15.clickedEs(mouseX,mouseY) == true ){
    rc1.estR(true);
    estBtn = true;
  }
  if (ac15.clickedEs(mouseX,mouseY) == true || ac14.clickedEs(mouseX,mouseY) == true ||
  ac13.clickedEs(mouseX,mouseY) == true || ac12.clickedEs(mouseX,mouseY) == true || ac11.clickedEs(mouseX,mouseY) == true ||
  ac10.clickedEs(mouseX,mouseY) == true || ac9.clickedEs(mouseX,mouseY) == true || ac8.clickedEs(mouseX,mouseY) == true ||
  ac7.clickedEs(mouseX,mouseY) == true || ac6.clickedEs(mouseX,mouseY) == true || ac5.clickedEs(mouseX,mouseY) == true ||
  ac4.clickedEs(mouseX,mouseY) == true || ac3.clickedEs(mouseX,mouseY) == true || ac2.clickedEs(mouseX,mouseY) == true ||
  ac1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }    
  
  //Draco
  if (dra1.clickedEs(mouseX,mouseY) == true || dra2.clickedEs(mouseX,mouseY) == true || dra3.clickedEs(mouseX,mouseY) == true || 
  dra4.clickedEs(mouseX,mouseY) == true || dra5.clickedEs(mouseX,mouseY) == true || dra6.clickedEs(mouseX,mouseY) == true || 
  dra7.clickedEs(mouseX,mouseY) == true || dra8.clickedEs(mouseX,mouseY) == true || dra9.clickedEs(mouseX,mouseY) == true || 
  dra10.clickedEs(mouseX,mouseY) == true || dra11.clickedEs(mouseX,mouseY) == true ||
  dra12.clickedEs(mouseX,mouseY) == true || dra13.clickedEs(mouseX,mouseY) == true || dra14.clickedEs(mouseX,mouseY) == true ||
  dra15.clickedEs(mouseX,mouseY) == true ){
    rc1.estR(true);
    estBtn = true;
  }
  if (dra15.clickedEs(mouseX,mouseY) == true || dra14.clickedEs(mouseX,mouseY) == true ||
  dra13.clickedEs(mouseX,mouseY) == true || dra12.clickedEs(mouseX,mouseY) == true || dra11.clickedEs(mouseX,mouseY) == true ||
  dra10.clickedEs(mouseX,mouseY) == true || dra9.clickedEs(mouseX,mouseY) == true || dra8.clickedEs(mouseX,mouseY) == true ||
  dra7.clickedEs(mouseX,mouseY) == true || dra6.clickedEs(mouseX,mouseY) == true || dra5.clickedEs(mouseX,mouseY) == true ||
  dra4.clickedEs(mouseX,mouseY) == true || dra3.clickedEs(mouseX,mouseY) == true || dra2.clickedEs(mouseX,mouseY) == true ||
  dra1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  
  //Aries
  if (ar1.clickedEs(mouseX,mouseY) == true || ar2.clickedEs(mouseX,mouseY) == true || ar3.clickedEs(mouseX,mouseY) == true || 
  ar4.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (ar4.clickedEs(mouseX,mouseY) == true || ar3.clickedEs(mouseX,mouseY) == true || ar2.clickedEs(mouseX,mouseY) == true ||
  ar1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }  
  
  //Triangulum
  if (tr1.clickedEs(mouseX,mouseY) == true || tr2.clickedEs(mouseX,mouseY) == true || tr3.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (tr3.clickedEs(mouseX,mouseY) == true || tr2.clickedEs(mouseX,mouseY) == true || tr1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }  
  //Lacerta
  if (la1.clickedEs(mouseX,mouseY) == true || la2.clickedEs(mouseX,mouseY) == true || la3.clickedEs(mouseX,mouseY) == true || 
  la4.clickedEs(mouseX,mouseY) == true || la5.clickedEs(mouseX,mouseY) == true || la6.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (la6.clickedEs(mouseX,mouseY) == true || la5.clickedEs(mouseX,mouseY) == true ||
  la4.clickedEs(mouseX,mouseY) == true || la3.clickedEs(mouseX,mouseY) == true || la2.clickedEs(mouseX,mouseY) == true ||
  la1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }  
  //Lynx
  if (ly1.clickedEs(mouseX,mouseY) == true || ly2.clickedEs(mouseX,mouseY) == true || ly3.clickedEs(mouseX,mouseY) == true || 
  ly4.clickedEs(mouseX,mouseY) == true || ly5.clickedEs(mouseX,mouseY) == true || ly6.clickedEs(mouseX,mouseY) == true || 
  ly7.clickedEs(mouseX,mouseY) == true || ly8.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (ly8.clickedEs(mouseX,mouseY) == true ||
  ly7.clickedEs(mouseX,mouseY) == true || ly6.clickedEs(mouseX,mouseY) == true || ly5.clickedEs(mouseX,mouseY) == true ||
  ly4.clickedEs(mouseX,mouseY) == true || ly3.clickedEs(mouseX,mouseY) == true || ly2.clickedEs(mouseX,mouseY) == true ||
  ly1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  
  //Fornax
  if (fo1.clickedEs(mouseX,mouseY) == true || fo2.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (fo2.clickedEs(mouseX,mouseY) == true || fo1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }  
  
  //Cygnus
  if (cy1.clickedEs(mouseX,mouseY) == true || cy2.clickedEs(mouseX,mouseY) == true || cy3.clickedEs(mouseX,mouseY) == true || 
  cy4.clickedEs(mouseX,mouseY) == true || cy5.clickedEs(mouseX,mouseY) == true || cy6.clickedEs(mouseX,mouseY) == true || 
  cy7.clickedEs(mouseX,mouseY) == true || cy8.clickedEs(mouseX,mouseY) == true || cy9.clickedEs(mouseX,mouseY) == true || 
  cy10.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (cy10.clickedEs(mouseX,mouseY) == true || cy9.clickedEs(mouseX,mouseY) == true || cy8.clickedEs(mouseX,mouseY) == true ||
  cy7.clickedEs(mouseX,mouseY) == true || cy6.clickedEs(mouseX,mouseY) == true || cy5.clickedEs(mouseX,mouseY) == true ||
  cy4.clickedEs(mouseX,mouseY) == true || cy3.clickedEs(mouseX,mouseY) == true || cy2.clickedEs(mouseX,mouseY) == true ||
  cy1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }

  
  //Evaluar si alguna estrella esta activa para mostrar el recuadro transparente de texto
  if (estBtn == false){
    rc1.estR(false);
  }  
  
  //Evaluar informacion planetas, lunas, etc.
  //Estrellas solitarias
  if (c1.clickedEs(mouseX,mouseY) == true || c2.clickedEs(mouseX,mouseY) == true || es1.clickedEs(mouseX,mouseY) == true
  || es2.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (es2.clickedEs(mouseX,mouseY) == true || es1.clickedEs(mouseX,mouseY) == true || c2.clickedEs(mouseX,mouseY) == true
  || c1.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  
  //Planetas,lunas,etc
  if (marte.clickedEs(mouseX,mouseY) == true || jupiter.clickedEs(mouseX,mouseY) == true || saturno.clickedEs(mouseX,mouseY) == true
  || luna.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (luna.clickedEs(mouseX,mouseY) == true || saturno.clickedEs(mouseX,mouseY) == true || jupiter.clickedEs(mouseX,mouseY) == true
  || marte.clickedEs(mouseX,mouseY) == true){
    rc1.estR(true);
    estBtn = true;
  }
  if (estBtn == false){
    rc1.estR(false);
  }  
  
  
  //Verificar estado del boton N° 1
  if (r1.clickedBtR(mouseX,mouseY)==true){ 
    //orion  
    l2.estL(true);
    l3.estL(true);
    l4.estL(true);
    l5.estL(true);
    l6.estL(true);
    l7.estL(true);
    l8.estL(true);
    l9.estL(true);
    l10.estL(true);
    l11.estL(true);
    l12.estL(true);
    l13.estL(true);
    l14.estL(true);
    l15.estL(true);
    l16.estL(true);
    l17.estL(true);
    l18.estL(true);
    l19.estL(true);
    l20.estL(true);
    l21.estL(true);
    l22.estL(true);
    //casiopea
    l23.estL(true);
    l24.estL(true);
    l25.estL(true);
    l26.estL(true);
    //gemini
    gel1.estL(true);
    gel2.estL(true);
    gel3.estL(true);
    gel4.estL(true);
    gel5.estL(true);
    gel6.estL(true);
    gel7.estL(true);
    gel8.estL(true);
    gel9.estL(true);
    gel10.estL(true);
    gel11.estL(true);
    gel12.estL(true);
    gel13.estL(true);
    gel14.estL(true);
    gel15.estL(true);
    gel16.estL(true);
    //acuario
    acl1.estL(true);
    acl2.estL(true);
    acl3.estL(true);
    acl4.estL(true);
    acl5.estL(true);
    acl6.estL(true);
    acl7.estL(true);
    acl8.estL(true);
    acl9.estL(true);
    acl10.estL(true);
    acl11.estL(true);
    acl12.estL(true);
    acl13.estL(true);
    acl14.estL(true);
    //draco
    dral1.estL(true);
    dral2.estL(true);
    dral3.estL(true);
    dral4.estL(true);
    dral5.estL(true);
    dral6.estL(true);
    dral7.estL(true);
    dral8.estL(true);
    dral9.estL(true);
    dral10.estL(true);
    dral11.estL(true);
    dral12.estL(true);
    dral13.estL(true);
    dral14.estL(true);
    dral15.estL(true);     
    //Aries
    arl1.estL(true);
    arl2.estL(true);
    arl3.estL(true);
    //Triangulum
    trl1.estL(true);
    trl2.estL(true);
    trl3.estL(true);  
    //Lacerta
    lal1.estL(true);
    lal2.estL(true);
    lal3.estL(true);
    lal4.estL(true);
    lal5.estL(true);
    lal6.estL(true);
    //Lynx
    lyl1.estL(true);
    lyl2.estL(true);
    lyl3.estL(true);
    lyl4.estL(true);
    lyl5.estL(true);
    lyl6.estL(true);
    lyl7.estL(true);
    //Fornax
    fol1.estL(true);
    //Cygnu
    cyl1.estL(true);
    cyl2.estL(true);
    cyl3.estL(true);
    cyl4.estL(true);
    cyl5.estL(true);
    cyl6.estL(true);
    cyl7.estL(true);
    cyl8.estL(true);
    cyl9.estL(true);
    
    txt1.estTxt(true);
  }
  else{
    //orion
    l2.estL(false);
    l3.estL(false);
    l4.estL(false);
    l5.estL(false);
    l6.estL(false);
    l7.estL(false);
    l8.estL(false);
    l9.estL(false);
    l10.estL(false);
    l11.estL(false);
    l12.estL(false);
    l13.estL(false);
    l14.estL(false);
    l15.estL(false);
    l16.estL(false);
    l17.estL(false);
    l18.estL(false);
    l19.estL(false);
    l20.estL(false);
    l21.estL(false);
    l22.estL(false);
    //casiopea
    l23.estL(false);
    l24.estL(false);
    l25.estL(false);
    l26.estL(false);
    //Gemini
    gel1.estL(false);
    gel2.estL(false);
    gel3.estL(false);
    gel4.estL(false);
    gel5.estL(false);
    gel6.estL(false);
    gel7.estL(false);
    gel8.estL(false);
    gel9.estL(false);
    gel10.estL(false);
    gel11.estL(false);
    gel12.estL(false);
    gel13.estL(false);
    gel14.estL(false);
    gel15.estL(false);
    gel16.estL(false);
    //acuario
    acl1.estL(false);
    acl2.estL(false);
    acl3.estL(false);
    acl4.estL(false);
    acl5.estL(false);
    acl6.estL(false);
    acl7.estL(false);
    acl8.estL(false);
    acl9.estL(false);
    acl10.estL(false);
    acl11.estL(false);
    acl12.estL(false);
    acl13.estL(false);
    acl14.estL(false);
    //Draco
    dral1.estL(false);
    dral2.estL(false);
    dral3.estL(false);
    dral4.estL(false);
    dral5.estL(false);
    dral6.estL(false);
    dral7.estL(false);
    dral8.estL(false);
    dral9.estL(false);
    dral10.estL(false);
    dral11.estL(false);
    dral12.estL(false);
    dral13.estL(false);
    dral14.estL(false);    
    dral15.estL(false); 
    //Aries
    arl1.estL(false);
    arl2.estL(false);
    arl3.estL(false);
    //Triangulum
    trl1.estL(false);
    trl2.estL(false);
    trl3.estL(false);
    //Lacerta
    lal1.estL(false);
    lal2.estL(false);
    lal3.estL(false);
    lal4.estL(false);
    lal5.estL(false);
    lal6.estL(false);
    //Lynx
    lyl1.estL(false);
    lyl2.estL(false);
    lyl3.estL(false);
    lyl4.estL(false);
    lyl5.estL(false);
    lyl6.estL(false);
    lyl7.estL(false);
    //Fornax
    fol1.estL(false);
    //Cygnus
    cyl1.estL(false);
    cyl2.estL(false);
    cyl3.estL(false);
    cyl4.estL(false);
    cyl5.estL(false);
    cyl6.estL(false);
    cyl7.estL(false);
    cyl8.estL(false);
    cyl9.estL(false);
    
    txt1.estTxt(false);
  }  
  
  //Verificar estado del boton N° 2
  if (r2.clickedBtR(mouseX,mouseY) == true){
    im2.estIm(true);
    txt2.estTxt(true);
  }
  else {
    im2.estIm(false);
    txt2.estTxt(false);
  }
  
  //Verificar estado del boton N° 3
  if(r3.clickedBtR(mouseX,mouseY)==true){
    if (cst1.clickedCos(mouseX,mouseY)==true || cst2.clickedCos(mouseX,mouseY)==true || gec1.clickedCos(mouseX,mouseY)==true || acc1.clickedCos(mouseX,mouseY)==true
    || drac1.clickedCos(mouseX,mouseY)==true || arc1.clickedCos(mouseX,mouseY)==true || trc1.clickedCos(mouseX,mouseY)==true || lac1.clickedCos(mouseX,mouseY)==true 
    || lyc1.clickedCos(mouseX,mouseY)==true || foc1.clickedCos(mouseX,mouseY)==true || cyc1.clickedCos(mouseX,mouseY)==true){
      rc1.estR(true);
      estBtn = true;
    }
    if (cyc1.clickedCos(mouseX,mouseY)==true || foc1.clickedCos(mouseX,mouseY)==true || lyc1.clickedCos(mouseX,mouseY)==true || lac1.clickedCos(mouseX,mouseY)==true || trc1.clickedCos(mouseX,mouseY)==true || arc1.clickedCos(mouseX,mouseY)==true || drac1.clickedCos(mouseX,mouseY)==true || 
    acc1.clickedCos(mouseX,mouseY)==true || gec1.clickedCos(mouseX,mouseY)==true || cst2.clickedCos(mouseX,mouseY)==true 
    || cst1.clickedCos(mouseX,mouseY)==true){
      rc1.estR(true);
      estBtn = true;
    }
    if (estBtn == false) {
      rc1.estR(false);
    }
    cst1.estCos(true);
    cst2.estCos(true);
    gec1.estCos(true);
    acc1.estCos(true);
    drac1.estCos(true);
    arc1.estCos(true);
    trc1.estCos(true);
    lac1.estCos(true);  
    lyc1.estCos(true);  
    foc1.estCos(true);  
    cyc1.estCos(true); 
    txt3.estTxt(true);
  }
  else {
    cst1.estCos(false);
    cst2.estCos(false);
    gec1.estCos(false);
    acc1.estCos(false);
    drac1.estCos(false);  
    arc1.estCos(false); 
    trc1.estCos(false); 
    lac1.estCos(false);  
    lyc1.estCos(false);  
    foc1.estCos(false);  
    cyc1.estCos(false);  
    txt3.estTxt(false);
  }
  }
  }
}
