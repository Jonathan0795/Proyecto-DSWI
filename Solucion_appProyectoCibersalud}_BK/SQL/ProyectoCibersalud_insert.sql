use cibersalud;
/*******************TABLA TIPO DOCUMENTO*************************/
insert into tb_tipoDocumento values
(1,'Dni'),(2,'Carnet de Extranjería'),(3,'Pasaporte');
-- select*from tb_tipoDocumento;
/*******************TABLA LABORATORIOS*************************/
insert into tb_laboratorio values
('Abbot Laboratorios S.A.',default),('Bayer S.A.',default),('B. Braun Medical Perú S.A.',default),('Cifarma S.A.',default),('Jhonson & Jhonson',default),
('Laboratorio Astrazeneca',default),('Laboratorios Bagó',default),('Laboratorios Induquimica S.A.',default);
-- select*from tb_laboratorio;
/*******************TABLA UBIGEOS*************************/
insert into tb_ubigeos values
('150101','Lima','Lima','Lima'),('150102','Lima','Lima','Ancon'),('150103','Lima','Lima','Ate'),('150104','Lima','Lima','Barranco'),('150105','Lima','Lima','Breña'),
('150106','Lima','Lima','Carabayllo'),('150107','Lima','Lima','Chaclacayo'),('150108','Lima','Lima','Chorrillos'),('150109','Lima','Lima','Cieneguilla'),('150110','Lima','Lima','Comas'),
('150111','Lima','Lima','El Agustino'),('150112','Lima','Lima','Independencia'),('150113','Lima','Lima','Jesus Maria'),('150114','Lima','Lima','La Molina'),('150115','Lima','Lima','La Victoria'),
('150116','Lima','Lima','Lince'),('150117','Lima','Lima','Los Olivos'),('150118','Lima','Lima','Lurigancho'),('150119','Lima','Lima','Lurin'),('150120','Lima','Lima','Magdalena del Mar'),
('150121','Lima','Lima','Pueblo Libre'),('150122','Lima','Lima','Miraflores'),('150123','Lima','Lima','Pachacamac'),('150124','Lima','Lima','Pucusana'),('150125','Lima','Lima','Puente Piedra'),
('150126','Lima','Lima','Punta Hermosa'),('150127','Lima','Lima','Punta Negra'),('150128','Lima','Lima','Rimac'),('150129','Lima','Lima','San Bartolo'),('150130','Lima','Lima','San Borja'),
('150131','Lima','Lima','San Isidro'),('150132','Lima','Lima','San Juan de Lurigancho'),('150133','Lima','Lima','San Juan de Miraflores'),('150134','Lima','Lima','San Luis'),
('150135','Lima','Lima','San Martin de Porres'),('150136','Lima','Lima','San Miguel'),('150137','Lima','Lima','Santa Anita'),('150138','Lima','Lima','Santa Maria del Mar'),
('150139','Lima','Lima','Santa Rosa'),('150140','Lima','Lima','Santiago de Surco'),('150141','Lima','Lima','Surquillo'),('150142','Lima','Lima','Villa el Salvador'),('150143','Lima','Lima','Villa Maria del Triunfo');
-- select*from tb_ubigeos;
/*******************TABLA CATEGORIAS*************************/
insert into tb_categorias values
(1,null, 'Farmacia', default),(2,1, 'Maestar Estomacal', default),(3,1, 'Dolor Generalizado', default),(4,1,'Malestar General',default),(5,1,'Resfríado Común',default),
(6,1,'Cuidado Muscular',default),(7,null,'Cuidado Personal',default),(8,7,'Cuidado Bucal',default),(9,7,'Cuidado del Cabello',default),(10,7,'Desodorante',default),
(11,7,'Bienestar Sexual',default),(12,7,'Cuidado de la Piel',default),(13,null,'Cuidado del Bebé',default),(14,13,'Pañales para Bebé',default),(15,13,'Fórmulas para Bebé',default),
(16,13,'Aseo Bebé / Niños',default),(17,13,'Toallitas Húmedas',default),(18,13,'Accesorios de Cuidado Infantil',default),(19,null,'Cuidado Capilar',default),
(20,19,'Shampoo y Acondicionador',default),(21,19,'Tintes',default),(22,19,'Tratamientos',default),(23,19,'Cuidado y Belleza Superior',default),(24,19,'Accesorios',default),
(25,null,'Dermatología Cosmética',default),(26,25,'Tratamientos Corporales',default),(27,25,'Fotoprotector',default),(28,25,'Tratamiento Facial',default),(29,25,'Cuidado Capilar',default),
(30,25,'Otros Productos',default);  
-- select*from tb_categorias; 
/*******************TABLA PRODUCTOS**************************/
insert into tb_producto values
-- Farmacia/Malestar Estomacal ----------------------------------------------------------------------------------------------------------
(2,1,'Gaseovet 80 mg/ml Suspensión Gotas Sabor Fresa','Antiespumante, reduce la tensión superficial de las burbujas de gas facilitando su eliminación.',
'Frasco 15 ml',18.70,default,'gaseovet_80mg.jpg',default),
(3,1,'Floratil 250 Mg Cápsula','Antidiarreico. Reconstituyente de la flora intestinal.','Caja 10 Un',34.30,default,'floratil_250mg.jpg',default),
(6,1,'Biogermin Solución oral gotas','BIOGERMIN SOLUCIÓN ORAL es un complemento alimenticio que se ha formulado con fermentos lácticos vivos, concretamente Bifidobacterium longum CECT 7894 y Pediococcus pentosaceus CECT 8330 (cepas protegidas por patente EP13382324). Contiene como mínimo 1000 millones de UFC (unidades formadoras de colonias) por dosis de 5 gotas.',
'Frasco 8 ml',47.80,default,'biogermin_gotas.jpg',default),
(5,1,'Enterogermina Suspensión Oral','Enterogermina® es un producto farmacéuticos probiótico constituido por 2 mil millones de esporas de Bacillus clausii y agua. Cada frasco contiene 5mL de la suspensión, siendo la dosis recomendada de 2 a 3 frascos al día en adultos y 1 a 2 frascos en niños.',
'Caja 10 Un',37.50,default,'enterogermina_oral.jpg',default),
(4,1,'Multiflora Comprimido Masticable','Multiflora es un producto constituido por micronutrientes (prebiótico) y bacterias beneficiosas especialmente seleccionadas (conocidas como probióticos) dirigido al tratamiento de afecciones digestivas.',
'Caja 15 Un',48.80,default,'multiflora_comprimido.jpg',default),
-- Farmacia/Dolor Generalizado ----------------------------------------------------------------------------------------------------------
(1,1,'Voltaren 1 % Emulgel','Para alivio del dolor muscular, cuello y espalda','Tubo 100 G',39.80,default,'voltare_tubo.jpg',default),
(3,1,'Reuma plus Ungüento Tópico','Dolor muscular reumático y artrítico','Pote 45 G',14.20,default,'reuma_plus.jpg',default),
(8,1,'Cystone Tableta Recubierta','Contiene sustancias que desintegran la mucina (mucoproteína que le confiere solidez a los cálculos urinarios).Al cambiar las propiedades químicas y físicas de la orina, contribuye a la desintegración de cálculos urinarios.',
'Frasco 60 Un',50.00,default,'cystone_tableta.jpg',default),
(5,1,'Bengay Gel','Dolores traumáticos, calambres y torceduras','Tubo 28 G',15.70,default,'bengay_gel.jpg',default),
(6,1,'Hep.52 Tabletas Recubiertas','Desintoxica tu hígado con la formulación Ayurvédica de la India.','Frasco 60 Un',48.50,default,'hep52_tabletas.jpg',default),
-- Farmacia/Malestar General ----------------------------------------------------------------------------------------------------------
(7,1,'Panadol Forte Tableta','Reduce la fiebre y alivia temporalmente el dolor de cabeza, migraña, dolor de osteoartritis, dolor dental, dolor luego de procedimientos dentales, dolores musculares, dolor de espalda, dolor de garganta y dolor menstrual.',
'Sobre X2 Tabs 1 Un',1.87,default,'panadol_forte.jpg',default),
(8,1,'Panadol 160 mg/5ml Jarabe','Alivia la fiebre y el dolor leve a moderado incluyendo: dolor de cabeza, dolor muscular, dolor de garganta, dolor musculo esquelético, dolor de la dentición, dolor y fiebre producidos por la vacunación.',
'Frasco 60 ml',14.90,default,'panadol_jarabe.jpg',default),
(1,1,'Aspirina Ultra 500 mg Comprimido Recubierto','Alivia fuertes dolores de cabeza gracias a sus partículas microactivas de rápida acción. Es suave con tu estómago.',
'Blister 4 Un',2.46,default,'aspirina_ultra.jpg',default),
(5,1,'Mejoralito infantil 160 mg/5mL Jarabe','Mejoralito infantil antipirético-analgésico, alivio contra la fiebre y el dolor,no contiene azúcar.',
'Frasco 60 ml',10.60,default,'mejoralito_infantil.jpg',default),
(8,1,'Acrylarm 0,2% Gel Oftálmico',' Lubricante para el alivio de los síntomas de sequedad ocular. Usos: Cuadros inflamatorios oculares externos debidos a insuficiente secreción lagrimal o desecación excesiva, exposición al viento, al sol o a sustancias irritantes. Síndrome de ojo seco. Queratoconjuntivitis sicca. Queratoconjuntivitis crónica.',
'Tubo 10 G',42.00,default,'acrylarm_gel.jpg',default),
(2,1,'Panadol 500mg Tableta','Alivio de la fiebre y el tratamiento de dolores leves a moderados, incluyendo: dolor de cabeza, dolor muscular, dolor menstrual, dolor de garganta, dolor de espalda y dolor dental.',
'Sobre X2 Tabs 1 Un',1.08,default,'panadol_tableta.jpg',default),
-- Farmacia/Resfriado Común ----------------------------------------------------------------------------------------------------------
(8,1,'Vick Vaporub Ungüento tópico','Vick VapoRub es un ungüento que combina mentol, eucalipto y alcanfor en un ungüento, que ayuda a descongestionar las vías respiratorias, calmar la tos y alivio temporal de dolores musculares menores.',
'Pote 100 G',14.60,default,'vick_vaporub.jpg',default),
(6,1,'Abrilar Jarabe','Medicamento a base de plantas utilizado como expectorante para la tos productiva en adultos, adolescentes y niños ',
'Frasco 100 ml',18.20,default,'abrilar_jarabe.jpg',default),
(3,1,'Vick 44 Jarabe','Vick 44 es un jarabe que alivia la tos seca y con flema, su efecto es antitusígeno y expectorante. No genera somnolencia.',
'Frasco 120 ml',16.20,default,'vick44_jarabe.jpg',default),
(2,1,'Panadol Antigripal NF Tableta','Alivio temporal de los siguientes síntomas del resfrió y la gripe: dolores de cabeza, secreción o congestión nasal, dolor de garganta, tos seca, malestares y dolores corporales, estornudos, picazón y lagrimeo en los ojos, y fiebre.',
'Sobre X2 Tabs 1 Un',2.10,default,'panadol_antigripal.jpg',default),
(1,1,'Paltomiel Adulto Jarabe - Frasco 200 ml','Coadyuvante en el tratamiento de enfermedades que cursen con tos productiva caracterizada por mucus abundante y viscoso. Se utiliza para fluidificar y eliminar las secreciones bronquiales y aliviar sintomáticamente la tos producida por resfríos, bronquitis u otras afecciones de las vías respiratorias.',
'Frasco 200 ml',17.40,default,'paltomiel_jarabe.jpg',default),
-- Farmacia/Cuidado Muscular ----------------------------------------------------------------------------------------------------------
(8,1,'Parche Transdérmico Gutong Tiegao','Almacenar a temperatura no mayor a 30°C.','Caja 5 Un',38.70,default,'parche_transdermico.jpg',default),
(2,1,'Hansaplast Parche León Árnica 12cm x 18 cm','Uso tradicional recomendado: en inflamaciones debido a dislocaciones, contusiones, problemas reumáticos, musculares y articulares.',
'Sobre 1 Un',6.70,default,'hansaplast_parche.jpg',default),
(3,1,'Bekoool Parche Gel','Parche para Migraña y Fiebre BeKOOOL','Caja 4 Un',45.40,default,'bekool_parche.jpg',default),
-- Cuidado Personal/Cuidado Bucal----------------------------------------------------------------------------------------------------------
(3,2,'Hilo Dental Essential Floss Oral-B Sabor Menta - Dispensador 50 M','Disfruta de confianza, seguridad y máximo cuidado bucal para toda la familia con Oral-B. Sus productos fueron diseñados para brindarte calidad y eficacia para complementar la salud oral. Descubre cepillos eléctricos, cepillos dentales, hilos, enjuagues y tiras blanqueadoras. Gracias a Oral-B, nunca ha sido más fácil mantener una boca sana.',
'Dispensador 50 m',8.20,default,'hilo_dental_ese.jpg',default),
(4,2,'Enjuague Bucal Totaldent Menta Fresca','El enjuague bucal Totaldent te ayuda a disminuir la aparición de gérmes que causan el mal olor, gracias a su fórmula de menta fresca y sin alcohol.',
'Frasco 500 ml',10.90,default,'enjuague_bucal.jpg',default),
(8,2,'Crema Dental Colgate Triple Acción','La crema dental Colgate Triple Acción protege tu salud bucal y la de toda tu familia. Su fórmula te brinda la confianza que necesitan, manteniendo un aliento súper fresco por mucho más tiempo. Su poderosa fórmula anticaries ayuda a eliminar las pequeñas bacterias que se encuentran entre las mejillas, dientes y lengua dejando una sensación totalmente refrescante en tu boca por varias horas. Protección anticaries, extra blancura y aliento fresco.',
'Pack 3 Un',16.40,default,'crema_dental_colgate.jpg',default),
(2,2,'Crema Dental Vitis Encías','La pasta dental Vitis Encías te ayuda con la higiene y protección bucal diaria. Su fórmula anticaries con Provitamina B5 reduce la placa bacteriana mientras protege las encías. Ideal para personas con encías sensibles',
'Tubos 100 ml',18.10,default,'crema_dental_vitis.jpg',default),
(2,2,'Cepillo Dental Vitis Medio','El cepillo dental Vitis Medio te ayuda con la limpieza y protección bucal. Su diseño con filamentos de dureza media y cabezal en forma de diamante elimina eficazmente la placa bacteriana.',
'Blíster 1 Un',15.40,default,'cepillo_dental_vitis.jpg',default),
(2,2,'Colutorio Vitis CPC Protect Enjuague Bucal','El colutorio Vitis CPC Protect te brinda higiene y cuidado bucal completo. Fórmula sin alcohol sabor a menta y de uso diario. COC (cloruro de Cetilpiridinio).',
'Frasco 500 ml',35.00,default,'colutorio_vitis.jpg',default),
(5,2,'Crema AdhesIva Corega Ultra sin Sabor','Bienvenidos a un mundo especializado en el cuidado, seguridad y protección para quienes llevan una prótesis dental. Los productos Corega fueron desarrollados para ayudarte con la salud, higiene y confort bucodental. Mejora tu calidad de vida, ríe más que nunca y disfruta sin restricciones con Corega.Seguridad y protección para el adulto mayor.',
'Tubo 20 G',23.30,default,'crema_corega.jpg',default),
(5,2,'Cepillo Dental Colgate 360 Luminous WhitePack de 2 Und.','Limpieza y cuidado bucal con Colgate Cepillo Dental 360 Luminous White Pack. Especialmente diseñado para blanquear los dientes. Posee copas blanqueadoras y cerdas que pulen los dientes.',
'Pack 2 Un',21.90,default,'cepillo_dental_colgate.jpg',default),
(4,2,'Crema Dental Rápido Alivio Sensodyne','Sensodyne de rápido alivio indicado en la prevención de enfermedades bucales contra la caries, el sarro, la placa bacteriana, manteniendo los dientes limpios, sanos, blancos y sin manchas.',
'Tubo 100 G',19.00,default,'crema_sensodyne.jpg',default),
-- Cuidado Personal/Cuidado del Cabello ----------------------------------------------------------------------------------------------------------
(1,2,'Acondicionador Herbal Essences Manuka Honey','El acondicionador hecho con miel de manuka está especialmente diseñado para prevenir la caída* del pelo. Este acondicionador inspirado en la naturaleza contiene miel de manuka, que tiene hasta 4 veces mayor contenido nutricional que la miel convencional además de bío:renew, una mezcla de algas marinas, aloe y antioxidante activo, que revitaliza tu pelo para darle una sensación de fortaleza y vida',
'Frasco 400 ml',29.90,default,'acondicionador_herbal.jpg',default),
(5,2,'Shampoo Tío Nacho Anti Edad','Tío Nacho Antiedad proporciona una hidratación y fortalecer la hebra capilar con apariencia más joven y cabello más saludable. Con extractos de origen natural como romero, jojoba, aloe vera y bardana que ayudan a nutrir, fortalecer el cabello desde la raíz hasta las puntas. Tío Nacho renueva su imagen para brindarte un cabello más saludable y con nuevo empaque 100% reciclado y reciclable.',
'Frasco 415 ml',26.80,default,'shampoo_tioNacho.jpg',default),
(8,2,'Ketonil 2% Champú','Tratamiento y profilaxis de pityriasis (caspa), dermatitis seborreica y pityriasis versicolor, entidades relacionadas con la infección por Pityrosporum spp.',
'Frasco 130 ml',41.30,default,'ketonil_champú.jpg',default),
(5,2,'Crema para Peinar Dream Long Liss','Dream Long Liss contiene los siguientes ingredientes que eliminan el frizz de tu cabello y lo alarga hasta 4cm: Keratina Vegetal para alisar la superficie del cabello y estirarlo. Manteca de Cacao que aporta elasticidad y flexibilidad a las fibras capilares',
'Frasco 300 ml',18.70,default,'crema_peinar_long.jpg',default),
(2,2,'Pilopeptan Capsulas Blandas','Complemento alimenticio en cápsulas que proporciona los nutrientes necesarios para estimular el crecimiento del cabello y frenar la caída. Fortalece el folículo piloso y su acción antioxidante lo protege frente al daño oxidativo.',
'Caja 60 Un',228.70,default,'pilopeptan.jpg',default),
(1,2,'Reparador de Puntas Lanosterin Lano.Wave Gotas de Cristal','El reparador de puntas Lanosterin Lano.Wave Gotas de Cristal te aporta brillo capilar y sedosidad cristal líquida. Restauración y cuidado para tu cabello gracias a su fórmula con Vitamina E.',
'Frasco 15 ml',11.50,default,'reparador_puntas_lanosterin.jpg',default),
(5,2,'Tinte Capilar Palette Color Rubio Oscuro #60','Las mujeres vivimos intensamente el color que queremos por eso Palette, se renueva para darnos esa intensidad en el cabello, gracias a su nuevo sistema de 3X cuidado Anti-Daño que nos permite intensidad de color hasta por 10 semanas y 100% cobertura de Canas. Intensidad de color hasta por 10 semanas según prueba instrumental. Hasta 100% dependiendo del tono del tinte. El uso combinado con un tono natural puede lograr un 100% cubrimiento de canas.',
'Kit 1 Un',21.90,default,'tinte_capilar_Pallete.jpg',default),
-- Cuidado Personal/Desodorantes ----------------------------------------------------------------------------------------------------------
(2,2,'Desodorante Antitranspirante en Barra Dove DermoAclarant para Mujer','Controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal.Reduce las manchas y restaura el tono de tu piel.',
'Frasco 50 G',13.90,default,'desodo_dove_antitraspirante.jpg',default),
(5,2,'Desodorante Antitranspirante en Spray Aclarado Natural Nivea ','Controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal.',
'Frasco 150 ml',13.50,default,'desodor_antitraspirante_spray_nivea.jpg',default),
(6,2,'Antitranspirante Dermoaclarant en Spray Dove 48 horas Desodorante','Controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal. Protección por 48 horas.',
'Frasco 150 ml',14.50,default,'desorante_dermoaclaran_spray_dove.jpg',default),
(8,2,'Antitranspirante Rexona Men Barra V8.Desodorante','El antitranspirante Rexona Men Barra V8. Desodorante controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal.',
'Frasco 50 G',12.50,default,'desodorante_rexona_barra_men.jpg',default),
(3,2,'Desodorante Rexona Woman Barra Active Emotion','El desodorante Rexona Woman Barra Active Emotion controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal.',
'Frasco 50 G',12.50,default,'desodorante_rexona_womana_barra.jpg',default),
(5,2,'Antitranspirante Spary Nivea Men Black & White Invisible Fresh','Evita la aparición de manchas blancas en la ropa negra y reduce la aparición de marcas amarillas en tu ropa blanca. Garantiza 48 horas de protección antitranspirante y antibacterias, con una fresca fragancia masculina.',
'Frasco 150 ml',16.00,default,'antitraspirante_spray_niveamen.jpg',default),
(1,2,'Desodorante Spray Lady Speed Stick Derma + Vitamina E','Controla el olor Inhibe las enzimas responsables de la degradación del sudor y, gracias a su poder antiadhesivo, controla el olor corporal.',
'Frasco 150 ml',17.10,default,'desodarante_spray_ladyspeed.jpg',default),
-- Cuidado Personal/Bienestar Sexual ----------------------------------------------------------------------------------------------------------
(3,2,'Preservativos Durex Invisible','Los preservativos Durex Sensitivo Ultra Delgado, está diseñado para brindar seguridad y confianza, es ultra delgado para brindar una mayor sensación de placer. Es 20% más delgado que el Durex Clásico. Venta exclusiva para mayores de edad. Largo 180 mm, Ancho nominal 52 mm, espesor 0.052 mm.',
'Caja 3 Un',9.90,default,'preservativos_durex_invisible.jpg',default),
(3,2,'Preservativos Durex Real Feel','Los preservativos Durex Real Feel, está elaborado en látex sintético de poliisopreno ideal para personas alérgicas al látex natural, brinda una sensación de piel con piel haciendo que la experiencia sea más real. Lubricado con fluido de silicón y forma anatómica. Largo 195 mm, ancho nominal 56 mm. Abrir solamente en el momento de uso.',
'Caja 3 Un',11.30,default,'preservativos_durex_realfeel.jpg',default),
(3,2,'Preservativos Durex Extra Seguro','Los preservativos Durex Extra Seguro están elaborado de látex natural, más grueso que los preservativos regulares para brindar mayor seguridad y confianza, su forma es anatómica, cuenta con lubricante a base de agua.',
'Caja 3 Un',7.80,default,'preservativos_durex_extraseguro.jpg',default),
(2,2,'Preservativo Piel con Retardante','Método de protección anticonceptiva, prevención de enfermedades de trasmisión sexual.',
'Caja 3 un',5.10,default,'preservativo_piel_retardante.jpg',default),
(5,2,'Preservativos Gents Clásico','Método de protección acticonceptiva, prevención de enfermedades de trasmisión sexual.',
'Caja 3 Un',5.00,default,'preservativos_gents_clasicos.jpg',default),
(6,2,'Gel Lubricante Íntimo Prudence Frutilla','Disfruta del Gel Lubricante Íntimo Prudence. Haciendo la relación sexual más placentera.Los geles lubricantes de la marca Prudence están diseñados y formulados para promover la lubricación sexual. Con base de agua, proporciona una lubricación similar a la natural. Un chapuzón de sensaciones y placer con Prudence.',
'Tubo 100 Gr',21.80,default,'lubricante_prudence_intimo.jpg',default),
(1,2,'Lubricante Íntimo K-Y Gel','No usar si el sello de seguridad se encuentra dañado o abierto. Manténgase fuera del alcance de los niños.',
'Tubo 100 G',46.00,default,'lubircante_intimo_ky.jpg',default),
-- Cuidado Personal/Cuidado de la piel ----------------------------------------------------------------------------------------------------------
(6,2,'Gel para cicatrices y estrías Cicatricure','Cicatricure Gel favorece el desvanecimiento progresivo de cicatrices de cirugía y estrías gracias a los componentes de fórmula exclusiva que aumentan la queratina, mejoran el proceso de cicatrización, regeneran e hidratan la piel. Este producto esta clínicamente comprobado por el Estudio externo de eficacia cosmética. Cicatricure un accidente científico que se ha transformado en un completa línea de productos dermocosméticos con los más altos estándares de calidad. Cicatricure es la línea que además de desvanecer cicatrices desaparece notablemente líneas de expresión y arrugas.',
'Tubo 30 G',39.90,default,'gel_cicatrices_estrias.jpg',default),
(3,2,'Loción Corporal Lea Urea','La loción corporal Lea te permite hidratar, reparar y regenerar la piel. Su fórmula de rápida absorción contiene 10% de urea para el correcto cuidado de la piel. Ideal para pieles muy sensibles y secas.',
'Frasco 400 ml',28.60,default,'locion_corporal_lea.jpg',default),
(4,2,'Bloqueador Labial Lipstick Cell Skin FPS 30 Sabor Coco','Indicado para proteger los labios de la resequedad causada por el sol, frío y viento, protección solar contra los rayos solares UV.',
'Blister 1 Un',6.90,default,'bloqueador_labial_lipstick.jpg',default),
(5,2,'Limpiador Profundo Bioré Rosa Cuarzo y Carbón','El Limpiador profundo Bioré cuenta con una tecnologia Japonesa de uso diario con infusión de cristales, cuarzo Rosa y Carbón natural, brinda una limpieza profunda eliminando el exceso de grasa e impurezas. Hipoalergenico, libre de aceites, probado por dermatologos, no obstruye los poros.',
'Frasco 200 ml',33.90,default,'limpiador_profundo_biore.jpg',default),
(1,2,'Crema Corporal Goicoechea Efecto Calmante','Crema Corporal Goigochea Efecto Calmante con árnica y manzanilla ayuda a aminorar y calmar la sensación de pesadez en zonas con moretones, mientras tanto brinda un efecto de frescura y relajación.',
'Frasco 400 ml',32.90,default,'crema_corporal_goicohea.jpg',default),
(4,1,'Cicatricure Crema Antiarrugas','Crema Antiarrugas para rostro, cuello y escote. Estimula la producción natural de Colágeno y Ácido Hialurónico, logrando así tensar la piel y reducir surcos, pliegues y líneas de expresión. Cuenta con una exclusiva tecnología BIOPEPTIDE REGEN, un complejo que promueve la regeneración natural de las células y corrige el daño de la piel. Desde la primera aplicación verás tu piel más hidratada, suave y luminosa.',
'Tubo 30 G',47.90,default,'cicatricure_crema.jpg',default);
-- Cuidado Personal/ ----------------------------------------------------------------------------------------------------------
-- (,,'','','',,default,'',default),
-- (,,'','','',,default,'',default),
-- (,,'','','',,default,'',default),
-- (,,'','','',,default,'',default),
-- (,,'','','',,default,'',default),

-- select*from tb_producto;
/*******************TABLA CLIENTES*************************/
insert into tb_cliente values ('Aguinaga','Juarez','Jonathan',1,'76358559','1995/02/07','M','jonathan0795@ce','rooot',NULL,NULL);
-- select*from tb_cliente; 