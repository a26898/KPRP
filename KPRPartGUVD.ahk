SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 13:show,  center h650 w1300 , AНК для главного управления внутренних дел
if (FonVybor="ERROR" or FonVybor=""){
Gui, 13:Add, Picture, x0 y24 w1300 h650,
}
Gui, 13:Add, Picture, x0 y24 w1300 h700 +BackgroundTrans, %FonVybor%
Gui, 13:Font, S10   Bold, %Shrift%
Gui, 13:Add, Tab2,  x0 y0 w1380 h28 c%Tsvet% +BackgroundTrans, Общее

Gui, 13:Add, Picture, x10 y600 w48 w48   +BackgroundTrans gSvoy, C:\ProgramData\KPRP\KPRP-main\Clear.png
Gui, 13:Add, Picture, x100 y600 w48 w48   +BackgroundTrans gEditor, C:\ProgramData\KPRP\KPRP-main\Editor.png
Gui, 13:Add, Picture, x200 y600 w48 w48   +BackgroundTrans gOffers, C:\ProgramData\KPRP\KPRP-main\Offers.png
Gui, 13:Add, Picture, x300 y600 w48 w48   +BackgroundTrans gEditDUVD7, C:\ProgramData\KPRP\KPRP-main\Test.png
Gui, 13:Add, Picture, x400 y600 w48 w48   +BackgroundTrans gInfoDUVD7, C:\ProgramData\KPRP\KPRP-main\Test.png 
Gui, 13:Add, Picture, x1040 y600 w48 w48   +BackgroundTrans  gVania, C:\ProgramData\KPRP\KPRP-main\Help.png
Gui, 13:Add, Picture, x1140 y600 w48 w48   +BackgroundTrans   gReload, C:\ProgramData\KPRP\KPRP-main\restart.png



:?:/КоАП_1.1::
SendPlay {Enter}
SendChat("say Задачами законодательства об административных правонарушениях", "  " zaderzhka " ")
SendChat("say (далее - настоящий Кодекс) являются защита личности, охрана прав", "  " zaderzhka " ")
SendChat("say и свобод человека и гражданина, охрана здоровья граждан,", "  " zaderzhka " ")
SendChat("say санитарно-эпидемиологического благополучия населения, защита", "  " zaderzhka " ")
SendChat("say общественной нравственности, охрана окружающей среды,", "  " zaderzhka " ")
SendChat("say установленного порядка осуществления государственной власти,", "  " zaderzhka " ")
SendChat("say общественного порядка и общественной безопасности, собственности,", "  " zaderzhka " ")
SendChat("say защита законных экономических интересов физических и юридических", "  " zaderzhka " ")
SendChat("say лиц, общества и государства от административных правонарушений,", "  " zaderzhka " ")
SendChat("say а также предупреждение административных правонарушений.", "  " zaderzhka " ")
SendChat("say За соблюдением кодекса следят все служащие Министерства внутренних дел.", "  " zaderzhka " ")
Return

:?:/КоАП_1.2::
SendPlay {Enter}
SendChat("say Лица, совершившие административное правонарушение,", "  " zaderzhka " ")
SendChat("say равны перед законом. Они подлежат ответственности независимо от", "  " zaderzhka " ")
SendChat("say пола, расы, национальности, языка, происхождения, имущественного", "  " zaderzhka " ")
SendChat("say и должностного положения, места жительства, отношения к религии,", "  " zaderzhka " ")
SendChat("say убеждений, принадлежности к общественным объединениям, а также", "  " zaderzhka " ")
SendChat("say других обстоятельств. Незнание закона не освобождает лицо от", "  " zaderzhka " ")
SendChat("say ответственности.", "  " zaderzhka " ")
Return

:?:/КоАП_1.3::
SendPlay {Enter}
SendChat("say Лицо подлежит ответственности только за те", "  " zaderzhka " ")
SendChat("say административные правонарушения, в отношении которых", "  " zaderzhka " ")
SendChat("say установлена его вина.", "  " zaderzhka " ")
Return

:?:/КоАП_1.4::
SendPlay {Enter}
SendChat("say Лицо, совершившее административное правонарушение,", "  " zaderzhka " ")
SendChat("say подлежит ответственности на основании закона, действовавшего", "  " zaderzhka " ")
SendChat("say во время совершения административного правонарушения.", "  " zaderzhka " ")
Return

:?:/КоАП_2.1::
SendPlay {Enter}
SendChat("say Административным правонарушением признается противоправное,", "  " zaderzhka " ")
SendChat("say виновное действие (бездействие) физического или юридического лица,", "  " zaderzhka " ")
SendChat("say за которое настоящим Кодексом установлена ответственность,", "  " zaderzhka " ")
SendChat("say также почти везде описанная и в Правилах дорожного движения.", "  " zaderzhka " ")
Return

:?:/КоАП_2.1.1::
SendPlay {Enter}
SendChat("say Рецидив преступлений влечет более строгое наказание", "  " zaderzhka " ")
SendChat("say на основании и в пределах, предусмотренных настоящим Кодексом.", "  " zaderzhka " ")
Return

:?:/КоАП_2.1.2::
SendPlay {Enter}
SendChat("say Рецидивом преступления признается совершение преступления лицом,", "  " zaderzhka " ")
SendChat("say наказание за которое он уже получал, и оно истекло менее,", "  " zaderzhka " ")
SendChat("say чем две недели назад.", "  " zaderzhka " ")
Return

:?:/КоАП_2.2.1::
SendPlay {Enter}
SendChat("say Административное правонарушение признается совершенным умышленно,", "  " zaderzhka " ")
SendChat("say если лицо, его совершившее, сознавало противоправный характер", "  " zaderzhka " ")
SendChat("say своего действия (бездействия), предвидело его вредные последствия", "  " zaderzhka " ")
SendChat("say и желало наступления таких последствий или сознательно их", "  " zaderzhka " ")
SendChat("say допускало, либо относилось к ним безразлично.", "  " zaderzhka " ")
Return

:?:/КоАП_2.2.2::
SendPlay {Enter}
SendChat("say Административное правонарушение признается совершенным по неосторожности,", "  " zaderzhka " ")
SendChat("say если лицо, его совершившее, предвидело возможность наступления", "  " zaderzhka " ")
SendChat("say вредных последствий своего действия (бездействия), но без", "  " zaderzhka " ")
SendChat("say достаточных к тому оснований самонадеянно рассчитывало на", "  " zaderzhka " ")
SendChat("say предотвращение таких последствий, либо не предвидело возможности", "  " zaderzhka " ")
SendChat("say наступления таких последствий, хотя должно было и могло их предвидеть.", "  " zaderzhka " ")
Return

:?:/КоАП_2.3::
SendPlay {Enter}
SendChat("say При малозначительности совершенного административного правонарушения", "  " zaderzhka " ")
SendChat("say сотрудник полиции может освободить лицо, совершившее", "  " zaderzhka " ")
SendChat("say административное правонарушение, от административной ответственности", "  " zaderzhka " ")
SendChat("say и ограничиться устным замечанием.", "  " zaderzhka " ")
Return

:?:/КоАП_4.1::
SendPlay {Enter}
SendChat("say Наказание за совершение административного правонарушения", "  " zaderzhka " ")
SendChat("say назначается в пределах, установленных законом,", "  " zaderzhka " ")
SendChat("say предусматривающим ответственность за данное административное", "  " zaderzhka " ")
SendChat("say правонарушение, в соответствии с настоящим Кодексом.", "  " zaderzhka " ")
Return

:?:/КоАП_4.2::
SendPlay {Enter}
SendChat("say При назначении наказания физическому лицу учитываются", "  " zaderzhka " ")
SendChat("say характер совершенного им административного правонарушения,", "  " zaderzhka " ")
SendChat("say личность виновного, его имущественное положение,", "  " zaderzhka " ")
SendChat("say обстоятельства, смягчающие ответственность, и обстоятельства,", "  " zaderzhka " ")
SendChat("say отягчающие ответственность.", "  " zaderzhka " ")
Return

:?:/КоАП_4.3::
SendPlay {Enter}
SendChat("say Никто не может нести ответственность дважды", "  " zaderzhka " ")
SendChat("say за одно и то же административное правонарушение подряд.", "  " zaderzhka " ")
Return

:?:/КоАП_4.4.1::
SendPlay {Enter}
SendChat("say Уполномоченное лицо, рассматривая дело об административном", "  " zaderzhka " ")
SendChat("say правонарушении, вправе при отсутствии спора о возмещении", "  " zaderzhka " ")
SendChat("say имущественного ущерба одновременно с назначением наказания", "  " zaderzhka " ")
SendChat("say решить вопрос о возмещении имущественного ущерба.", "  " zaderzhka " ")
Return

:?:/КоАП_4.4.2::
SendPlay {Enter}
SendChat("say Споры о возмещении морального вреда, причиненного", "  " zaderzhka " ")
SendChat("say административным правонарушением, рассматриваются", "  " zaderzhka " ")
SendChat("say на городском портале Республики Провинция.", "  " zaderzhka " ")
Return

:?:/КоАП_4.5::
SendPlay {Enter}
SendChat("say Срок давности привлечения к административной ответственности", "  " zaderzhka " ")
SendChat("say составляет 14 месяцев.", "  " zaderzhka " ")
Return

:?:/КоАП_5.1::
SendPlay {Enter}
SendChat("say Управление транспортным средством водителем, не имеющим при себе", "  " zaderzhka " ")
SendChat("say документов, предусмотренных правилами дорожного движения", "  " zaderzhka " ")
SendChat("say (см. 2.1.1 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.2::
SendPlay {Enter}
SendChat("say Непредоставление по требованию сотрудника полиции документов,", "  " zaderzhka " ")
SendChat("say предусмотренных правилами дорожного движения (см. 2.1.1 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 30.000 рублей или лишение права на управление", "  " zaderzhka " ")
SendChat("say транспортным средством с возможностью моментального переобучения.", "  " zaderzhka " ")
Return

:?:/КоАП_5.3::
SendPlay {Enter}
SendChat("say Управление транспортным средством, не зарегистрированным в", "  " zaderzhka " ")
SendChat("say установленном порядке, а также управление транспортным средством", "  " zaderzhka " ")
SendChat("say без государственных регистрационных знаков, а равно управление", "  " zaderzhka " ")
SendChat("say транспортным средством без установленных на предусмотренных для", "  " zaderzhka " ")
SendChat("say этого местах государственных регистрационных знаков либо со", "  " zaderzhka " ")
SendChat("say знаками видоизмененными или оборудованными с применением", "  " zaderzhka " ")
SendChat("say устройств или материалов, препятствующих идентификации", "  " zaderzhka " ")
SendChat("say государственных регистрационных знаков, либо позволяющих их", "  " zaderzhka " ")
SendChat("say видоизменить или скрыть, при том, что прошло более 3 суток", "  " zaderzhka " ")
SendChat("say с момента приобретения транспортного средства (см. 2.1.2 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.4::
SendPlay {Enter}
SendChat("say Управление транспортным средством, на котором установлена", "  " zaderzhka " ")
SendChat("say тонировка, светопропускаемость которой менее 70% на боковых", "  " zaderzhka " ")
SendChat("say передних и лобовом стеклах (в том числе запрещены цветные пленки)", "  " zaderzhka " ")
SendChat("say (см. 2.4 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.5::
SendPlay {Enter}
SendChat("say Управление транспортным средством при наличии технической", "  " zaderzhka " ")
SendChat("say неисправности или при наличии условия, когда она запрещена", "  " zaderzhka " ")
SendChat("say (см. 2.4 ПДД). Предупреждение или штраф - от 10.000 до 30.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.6::
SendPlay {Enter}
SendChat("say Управление мотоциклом или мопедом либо перевозка на мотоцикле", "  " zaderzhka " ")
SendChat("say или мопеде пассажиров без мотошлемов (см. 2.1.3 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.7::
SendPlay {Enter}
SendChat("say Нарушение правил дорожного движения пешеходами и велосипедистами", "  " zaderzhka " ")
SendChat("say (см. главу 4 ПДД). Предупреждение или штраф от 5.000 до 15.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.8::
SendPlay {Enter}
SendChat("say Посадка или высадка пассажиров со стороны проезжей части", "  " zaderzhka " ")
SendChat("say в нарушение правил дорожного движения (см. 5.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.9::
SendPlay {Enter}
SendChat("say Игнорирование водителем требования об остановке с помощью жезла.", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_5.10::
SendPlay {Enter}
SendChat("say Несоблюдение требований, предписанных дорожными знаками", "  " zaderzhka " ")
SendChat("say или разметкой проезжей части дороги (см. приложение 1 и приложение 2 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_6.1::
SendPlay {Enter}
SendChat("say Использование приоритета в движении при следовании с включенными", "  " zaderzhka " ")
SendChat("say маячками и звуковым сигналом, не убедившись в безопасности", "  " zaderzhka " ")
SendChat("say данного манёвра (см. 3.1 ПДД). Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_6.2::
SendPlay {Enter}
SendChat("say Нарушение правил использования аварийных сигналов (см. 7.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_6.3::
SendPlay {Enter}
SendChat("say Нарушение правил использования знака аварийной остановки (см. 7.2 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_6.4::
SendPlay {Enter}
SendChat("say Управление транспортным средством с выключенными фарами (см. 8.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_6.5::
SendPlay {Enter}
SendChat("say Использование звукового сигнала в нарушение правил дорожного движения", "  " zaderzhka " ")
SendChat("say (см. 8.3 ПДД). Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_7.1::
SendPlay {Enter}
SendChat("say Проезд на красный сигнал светофора, а равно проезд на запрещающий", "  " zaderzhka " ")
SendChat("say жест регулировщика, или на жёлтый сигнал светофора при возможности", "  " zaderzhka " ")
SendChat("say совершить остановку, не повлекшую создание опасности для движения", "  " zaderzhka " ")
SendChat("say иных участников дорожного движения (см. 6.1 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_7.2::
SendPlay {Enter}
SendChat("say Невыполнение требования Правил дорожного движения об остановке", "  " zaderzhka " ")
SendChat("say перед стоп-линией, обозначенной дорожными знаками или разметкой", "  " zaderzhka " ")
SendChat("say проезжей части дороги, при запрещающем сигнале светофора или", "  " zaderzhka " ")
SendChat("say запрещающем жесте регулировщика (см. 6.2 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_8.1::
SendPlay {Enter}
SendChat("say Начало движения, перестроение, поворот (разворот) и остановка", "  " zaderzhka " ")
SendChat("say без использования сигнала световыми указателями поворота", "  " zaderzhka " ")
SendChat("say соответствующего направления (см. 9.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_8.2::
SendPlay {Enter}
SendChat("say Непредоставление при перестроении преимущества транспортному", "  " zaderzhka " ")
SendChat("say средству, движущемуся попутно без изменения направления движения,", "  " zaderzhka " ")
SendChat("say а равно непредоставление при одновременном перестроении", "  " zaderzhka " ")
SendChat("say преимущества транспортному средству, движущемуся справа", "  " zaderzhka " ")
SendChat("say (см. 9.4 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_8.3::
SendPlay {Enter}
SendChat("say Поворот направо, налево или разворот из полосы движения,", "  " zaderzhka " ")
SendChat("say не предназначенной для данного манёвра (см. 9.4 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_8.4::
SendPlay {Enter}
SendChat("say Поворот направо, налево, разворот или движение задним ходом", "  " zaderzhka " ")
SendChat("say в нарушение требований правил дорожного движения, дорожных", "  " zaderzhka " ")
SendChat("say знаков или дорожной разметки (см. 9.4, 9.4.1, 9.6, 9.7 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_9.1::
SendPlay {Enter}
SendChat("say Движение по полосе, предназначенной для встречного движения,", "  " zaderzhka " ")
SendChat("say в нарушение правил дорожного движения (см. 10.1 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 50.000 рублей с лишением права на управление", "  " zaderzhka " ")
SendChat("say транспортным средством сроком до 2 лет.", "  " zaderzhka " ")
Return

:?:/КоАП_9.2::
SendPlay {Enter}
SendChat("say Выезд на полосу, предназначенную для встречного движения,", "  " zaderzhka " ")
SendChat("say в нарушение правил дорожного движения (см. 10.1 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 50.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_9.3::
SendPlay {Enter}
SendChat("say Движение вне населённых пунктов по левым полосам движения", "  " zaderzhka " ")
SendChat("say при свободных правых (см. 10.2 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_9.4::
SendPlay {Enter}
SendChat("say Движение по прерывистым линиям разметки в нарушение правил", "  " zaderzhka " ")
SendChat("say дорожного движения (см. 10.4 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_9.5::
SendPlay {Enter}
SendChat("say Движение по разделительным полосам и обочинам, тротуарам,", "  " zaderzhka " ")
SendChat("say пешеходным дорожкам и газону (см. 10.6 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 30.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_9.6::
SendPlay {Enter}
SendChat("say Несоблюдение дистанции до впереди идущего транспортного", "  " zaderzhka " ")
SendChat("say средства, а также бокового интервала между движущимися", "  " zaderzhka " ")
SendChat("say транспортными средствами (см. 10.8 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_10.1::
SendPlay {Enter}
SendChat("say Обгон транспортного средства, имеющего нанесенные на наружные", "  " zaderzhka " ")
SendChat("say поверхности специальные цветографические схемы с включенными", "  " zaderzhka " ")
SendChat("say проблесковым маячком синего цвета и специальным звуковым сигналом", "  " zaderzhka " ")
SendChat("say (см. 3.2 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_10.2::
SendPlay {Enter}
SendChat("say Обгон транспортного средства, имеющего нанесенные на наружные", "  " zaderzhka " ")
SendChat("say поверхности специальные цветографические схемы, с включенными", "  " zaderzhka " ")
SendChat("say проблесковыми маячками синего и(или) красного цветов и", "  " zaderzhka " ")
SendChat("say специальным звуковым сигналом, а также сопровождаемого им", "  " zaderzhka " ")
SendChat("say транспортного средства (сопровождаемых транспортных средств)", "  " zaderzhka " ")
SendChat("say (см. 3.2 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_10.3::
SendPlay {Enter}
SendChat("say Обгон транспортных средств в случаях, когда данный манёвр", "  " zaderzhka " ")
SendChat("say запрещён (см. 12.2 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_10.4::
SendPlay {Enter}
SendChat("say Препятствование обгону (см. 12.3 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_11.1::
SendPlay {Enter}
SendChat("say Остановка или стоянка транспортных средств на пешеходном", "  " zaderzhka " ")
SendChat("say переходе и ближе 5 метров перед ним, остановка или стоянка", "  " zaderzhka " ")
SendChat("say транспортных средств на тротуаре (см. 13.3 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_11.2::
SendPlay {Enter}
SendChat("say Остановка или стоянка транспортных средств в местах остановки", "  " zaderzhka " ")
SendChat("say маршрутных транспортных средств либо ближе 15 метров от мест", "  " zaderzhka " ")
SendChat("say остановки маршрутных транспортных средств, за исключением", "  " zaderzhka " ")
SendChat("say остановки для посадки или высадки пассажиров, вынужденной", "  " zaderzhka " ")
SendChat("say остановки (см. 13.3 ПДД). Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_11.3::
SendPlay {Enter}
SendChat("say Остановка или стоянка транспортных средств на трамвайных путях,", "  " zaderzhka " ")
SendChat("say газоне либо остановка или стоянка транспортных средств далее", "  " zaderzhka " ")
SendChat("say первого ряда от края проезжей части (см. 13.3 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_11.4::
SendPlay {Enter}
SendChat("say Нарушение правил остановки или стоянки транспортных средств", "  " zaderzhka " ")
SendChat("say на проезжей части, в тоннелях, повлекшее создание препятствий", "  " zaderzhka " ")
SendChat("say для движения других транспортных средств (см. 13.3 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_11.5::
SendPlay {Enter}
SendChat("say Нарушение правил остановки или стоянки транспортных средств,", "  " zaderzhka " ")
SendChat("say за исключением случаев, предусмотренных частями 1 - 4 настоящей", "  " zaderzhka " ")
SendChat("say статьи (см. главу 13 ПДД). Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_12.1::
SendPlay {Enter}
SendChat("say Нарушения правил проезда перекрёстков, не повлекшие опасности", "  " zaderzhka " ")
SendChat("say другим участникам движения (см. главу 14 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_12.2::
SendPlay {Enter}
SendChat("say Нарушения правил проезда перекрёстков, повлекшие опасность", "  " zaderzhka " ")
SendChat("say другим участникам движения (см. главу 14 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_13.1::
SendPlay {Enter}
SendChat("say Пересечение железнодорожных путей в местах, не оборудованных", "  " zaderzhka " ")
SendChat("say для этого (см. 16.1 ПДД). Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_13.2::
SendPlay {Enter}
SendChat("say Выезд на железнодорожный переезд в случаях, когда это запрещено", "  " zaderzhka " ")
SendChat("say (см. 16.3 ПДД). Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_13.3::
SendPlay {Enter}
SendChat("say Остановка транспортного средства ближе 5 м от шлагбаума,", "  " zaderzhka " ")
SendChat("say а при его отсутствии - ближе 10 м до ближайшего рельса", "  " zaderzhka " ")
SendChat("say (см. 16.4 ПДД). Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.1::
SendPlay {Enter}
SendChat("say Движение по автомагистрали транспортных средств, скорость", "  " zaderzhka " ")
SendChat("say которых по технической характеристике или их состоянию менее", "  " zaderzhka " ")
SendChat("say 40 км/ч (см. 17.1 ПДД). Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.2::
SendPlay {Enter}
SendChat("say Движение по автомагистрали грузовых автомобилей далее второй", "  " zaderzhka " ")
SendChat("say полосы (см. 17.1 ПДД). Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.3::
SendPlay {Enter}
SendChat("say Движение по автомагистрали задним ходом (см. 17.1 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.4::
SendPlay {Enter}
SendChat("say Создание пешеходом помех для автомобилей при движении", "  " zaderzhka " ")
SendChat("say в жилых зонах (см. 18.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.5::
SendPlay {Enter}
SendChat("say Сквозное движение, учебная езда, стоянка с работающим", "  " zaderzhka " ")
SendChat("say двигателем, а также стоянка грузовых автомобилей с разрешенной", "  " zaderzhka " ")
SendChat("say максимальной массой более 3,5 тонны вне специально выделенных", "  " zaderzhka " ")
SendChat("say и обозначенных знаками и(или) разметкой мест (см. 18.2 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_14.6::
SendPlay {Enter}
SendChat("say Движение в колонне в нарушение правил дорожного движения", "  " zaderzhka " ")
SendChat("say (см. главу 19 ПДД). Предупреждение или штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_15.1::
SendPlay {Enter}
SendChat("say Непредоставление преимущества транспортному средству с", "  " zaderzhka " ")
SendChat("say включенным проблесковым маячком синего цвета и(или) красного", "  " zaderzhka " ")
SendChat("say цвета и специальным звуковым сигналом (см. 3.2 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_15.2::
SendPlay {Enter}
SendChat("say Непредоставление преимущества троллейбусам и автобусам,", "  " zaderzhka " ")
SendChat("say начинающим движение от обозначенного места остановки", "  " zaderzhka " ")
SendChat("say (см. 20.2 ПДД). Штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_15.3::
SendPlay {Enter}
SendChat("say Непредоставление преимущества транспортным средствам, движущимся", "  " zaderzhka " ")
SendChat("say по главной дороге, а равно при выезде с прилегающей территории", "  " zaderzhka " ")
SendChat("say (см. 9.3 ПДД). Штраф - 10.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_15.4::
SendPlay {Enter}
SendChat("say Непредоставление преимущества в движении пешеходам и(или)", "  " zaderzhka " ")
SendChat("say велосипедистам, пересекающих проезжую часть (см. 15.1 ПДД).", "  " zaderzhka " ")
SendChat("say Предупреждение или штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_16.1::
SendPlay {Enter}
SendChat("say Оставление водителем в нарушение правил дорожного движения", "  " zaderzhka " ")
SendChat("say места дорожно-транспортного происшествия, участником которого", "  " zaderzhka " ")
SendChat("say он являлся (см. 2.4 ПДД). Штраф - 30.000 рублей с лишением", "  " zaderzhka " ")
SendChat("say права на управление транспортным средством сроком от 3 до 4 лет,", "  " zaderzhka " ")
SendChat("say а также административный арест на 20 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_16.2::
SendPlay {Enter}
SendChat("say Неоказание первой помощи в случаях, если такая помощь необходима,", "  " zaderzhka " ")
SendChat("say при дорожно-транспортном происшествии (см. 2.3 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_16.3::
SendPlay {Enter}
SendChat("say Невыполнение водителем обязанностей, предусмотренных Правилами", "  " zaderzhka " ")
SendChat("say дорожного движения, в связи с дорожно-транспортным происшествием,", "  " zaderzhka " ")
SendChat("say участником которого он является, за исключением случаев,", "  " zaderzhka " ")
SendChat("say предусмотренных статьей 16.1 (см. 2.3 ПДД).", "  " zaderzhka " ")
SendChat("say Штраф от 10.000 до 35.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1::
SendPlay {Enter}
SendChat("say Отстранение от управления транспортным средством,", "  " zaderzhka " ")
SendChat("say освидетельствование на состояние алкогольного опьянения", "  " zaderzhka " ")
SendChat("say и медицинское освидетельствование на состояние опьянения.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1.1::
SendPlay {Enter}
SendChat("say Лицо, которое управляет транспортным средством соответствующего", "  " zaderzhka " ")
SendChat("say вида и в отношении которого имеются достаточные основания", "  " zaderzhka " ")
SendChat("say полагать, что это лицо находится в состоянии опьянения,", "  " zaderzhka " ")
SendChat("say а также лица, совершившие административные правонарушения,", "  " zaderzhka " ")
SendChat("say предусмотренные статьями 19.1 и 19.4 настоящего Кодекса,", "  " zaderzhka " ")
SendChat("say подлежат отстранению от управления транспортным средством", "  " zaderzhka " ")
SendChat("say до устранения причины отстранения.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1.2::
SendPlay {Enter}
SendChat("say Об отстранении от управления транспортным средством, а также о", "  " zaderzhka " ")
SendChat("say направлении на медицинское освидетельствование на состояние", "  " zaderzhka " ")
SendChat("say опьянения составляется соответствующий протокол, копия которого", "  " zaderzhka " ")
SendChat("say вручается лицу, в отношении которого применена данная мера.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1.3::
SendPlay {Enter}
SendChat("say Лицо, которое управляет транспортным средством соответствующего", "  " zaderzhka " ")
SendChat("say вида и в отношении которого имеются достаточные основания", "  " zaderzhka " ")
SendChat("say полагать, что это лицо находится в состоянии опьянения,", "  " zaderzhka " ")
SendChat("say подлежит освидетельствованию на состояние алкогольного", "  " zaderzhka " ")
SendChat("say опьянения. При отказе от прохождения освидетельствования на", "  " zaderzhka " ")
SendChat("say состояние алкогольного опьянения либо несогласии указанного", "  " zaderzhka " ")
SendChat("say лица с результатами освидетельствования, а равно при наличии", "  " zaderzhka " ")
SendChat("say достаточных оснований полагать, что лицо находится в состоянии", "  " zaderzhka " ")
SendChat("say опьянения, и отрицательном результате освидетельствования на", "  " zaderzhka " ")
SendChat("say состояние алкогольного опьянения указанное лицо подлежит", "  " zaderzhka " ")
SendChat("say направлению на медицинское освидетельствование на состояние", "  " zaderzhka " ")
SendChat("say опьянения.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1.4::
SendPlay {Enter}
SendChat("say Управление транспортным средством в состоянии опьянения или", "  " zaderzhka " ")
SendChat("say передача управления транспортным средством лицу, находящемуся", "  " zaderzhka " ")
SendChat("say в состоянии опьянения (см. 2.4 ПДД). Штраф - 30.000 рублей", "  " zaderzhka " ")
SendChat("say с лишением права на управление транспортным средством сроком", "  " zaderzhka " ")
SendChat("say до 1 года.", "  " zaderzhka " ")
Return

:?:/КоАП_17.1.5::
SendPlay {Enter}
SendChat("say Невыполнение водителем транспортного средства законного", "  " zaderzhka " ")
SendChat("say требования уполномоченного должностного лица о прохождении", "  " zaderzhka " ")
SendChat("say медицинского освидетельствования на состояние опьянения.", "  " zaderzhka " ")
SendChat("say Штраф - 30.000 рублей с лишением права на управление", "  " zaderzhka " ")
SendChat("say транспортным средством сроком до 1 года.", "  " zaderzhka " ")
Return

:?:/КоАП_17.2::
SendPlay {Enter}
SendChat("say Опасное вождение (см. 2.4 ПДД). Штраф - до 30.000 рублей", "  " zaderzhka " ")
SendChat("say с лишением права на управление транспортным средством сроком", "  " zaderzhka " ")
SendChat("say до 2 лет.", "  " zaderzhka " ")
Return

:?:/КоАП_17.3::
SendPlay {Enter}
SendChat("say Управление механическим транспортным средством, имея неуплату", "  " zaderzhka " ")
SendChat("say штрафов на общую сумму до 10.000 рублей. Предупреждение.", "  " zaderzhka " ")
Return

:?:/КоАП_17.4::
SendPlay {Enter}
SendChat("say Управление механическим транспортным средством, имея неуплату", "  " zaderzhka " ")
SendChat("say штрафов на общую сумму от 10.000 до 50.000 рублей.", "  " zaderzhka " ")
SendChat("say Штраф - 30.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_17.5::
SendPlay {Enter}
SendChat("say Управление механическим транспортным средством, имея неуплату", "  " zaderzhka " ")
SendChat("say штрафов на общую сумму от 50.000 до 100.000 рублей.", "  " zaderzhka " ")
SendChat("say Штраф - 50.000 рублей с лишением права на управление", "  " zaderzhka " ")
SendChat("say транспортным средством сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/КоАП_17.6::
SendPlay {Enter}
SendChat("say Управление механическим транспортным средством, имея неуплату", "  " zaderzhka " ")
SendChat("say штрафов на общую сумму более 100.000 рублей.", "  " zaderzhka " ")
SendChat("say Штраф - 100.000 рублей с лишением права на управление", "  " zaderzhka " ")
SendChat("say транспортным средством сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/КоАП_18.1::
SendPlay {Enter}
SendChat("say Превышение скорости на 10-20 км/час, зафиксированное", "  " zaderzhka " ")
SendChat("say сотрудниками полиции. Предупреждение.", "  " zaderzhka " ")
Return

:?:/КоАП_18.2::
SendPlay {Enter}
SendChat("say Превышение скорости на 20-40 км/час, зафиксированное", "  " zaderzhka " ")
SendChat("say сотрудниками полиции. Штраф - 2.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_18.3::
SendPlay {Enter}
SendChat("say Превышение скорости на 40-60 км/час, зафиксированное", "  " zaderzhka " ")
SendChat("say сотрудниками полиции. Штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_18.4::
SendPlay {Enter}
SendChat("say Превышение скорости на 60-80 км/час, зафиксированное", "  " zaderzhka " ")
SendChat("say сотрудниками полиции. Штраф - 7.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_18.5::
SendPlay {Enter}
SendChat("say Превышение скорости на 80+ км/час, зафиксированное", "  " zaderzhka " ")
SendChat("say сотрудниками полиции. Штраф - 10.000 рублей с лишением", "  " zaderzhka " ")
SendChat("say права на управление транспортным средством сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/КоАП_19.1::
SendPlay {Enter}
SendChat("say Мелкое хулиганство, нарушение общественного порядка,", "  " zaderzhka " ")
SendChat("say выражающее явное неуважение к обществу, сопровождающееся", "  " zaderzhka " ")
SendChat("say нецензурной лексикой в общественных местах, неприличным или", "  " zaderzhka " ")
SendChat("say оскорбительным приставанием к гражданам, нахождением в", "  " zaderzhka " ")
SendChat("say общественных местах или на территории организаций, за", "  " zaderzhka " ")
SendChat("say исключением водоёмов, бассейнов, спортзалов, в нижнем белье,", "  " zaderzhka " ")
SendChat("say уничтожением или повреждением чужого имущества.", "  " zaderzhka " ")
SendChat("say Штраф - до 10.000 рублей или административный арест 10 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.2::
SendPlay {Enter}
SendChat("say Оскорбление, унижение чести и достоинства другого лица,", "  " zaderzhka " ")
SendChat("say выраженное в неприличной или иной противоречащей общепринятым", "  " zaderzhka " ")
SendChat("say нормам морали и нравственности форме.", "  " zaderzhka " ")
SendChat("say Штраф - до 10.000 рублей или административный арест 10 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.3::
SendPlay {Enter}
SendChat("say Нанесение побоев или совершение иных насильственных действий,", "  " zaderzhka " ")
SendChat("say причинивших физическую боль, если эти действия не содержат", "  " zaderzhka " ")
SendChat("say уголовно наказуемого деяния.", "  " zaderzhka " ")
SendChat("say Штраф - до 20.000 рублей или административный арест 10 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.4::
SendPlay {Enter}
SendChat("say Потребление (распитие) алкогольной продукции в общественных", "  " zaderzhka " ")
SendChat("say местах, а также появление на улицах, стадионах, в скверах,", "  " zaderzhka " ")
SendChat("say парках, в транспортном средстве общего пользования, в других", "  " zaderzhka " ")
SendChat("say общественных местах в состоянии алкогольного или наркотического", "  " zaderzhka " ")
SendChat("say опьянения, оскорбляющем человеческое достоинство и общественную", "  " zaderzhka " ")
SendChat("say нравственность. Штраф - 5.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_19.5::
SendPlay {Enter}
SendChat("say Занятие попрошайничеством в общественных местах.", "  " zaderzhka " ")
SendChat("say Предупреждение или административный арест 10 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.6::
SendPlay {Enter}
SendChat("say Осуществление предпринимательской деятельности без регистрации", "  " zaderzhka " ")
SendChat("say или без лицензии в случаях, когда такие регистрация и лицензия", "  " zaderzhka " ")
SendChat("say обязательны. Штраф - 100.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_19.7::
SendPlay {Enter}
SendChat("say Заведомо ложный вызов пожарной охраны, полиции, скорой", "  " zaderzhka " ")
SendChat("say медицинской помощи или иных специализированных служб.", "  " zaderzhka " ")
SendChat("say Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/КоАП_19.8::
SendPlay {Enter}
SendChat("say Организация, участие и(или) призыв к несанкционированному", "  " zaderzhka " ")
SendChat("say несогласованному митингу, повлекший нарушение общественного", "  " zaderzhka " ")
SendChat("say порядка, нарушение функционирования и сохранности объектов", "  " zaderzhka " ")
SendChat("say жизнеобеспечения, создание помех в движении пешеходов и(или)", "  " zaderzhka " ")
SendChat("say транспортных средств. Штраф - до 20.000 рублей или", "  " zaderzhka " ")
SendChat("say административный арест 10 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.9::
SendPlay {Enter}
SendChat("say Неповиновение законному распоряжению сотрудника полиции или", "  " zaderzhka " ")
SendChat("say военнослужащего. Штраф - 20.000 рублей или лишение права", "  " zaderzhka " ")
SendChat("say на управление транспортным средством сроком на 1 год, или", "  " zaderzhka " ")
SendChat("say административный арест до 20 суток.", "  " zaderzhka " ")
Return

:?:/КоАП_19.10::
SendPlay {Enter}
SendChat("say Клевета, то есть распространение заведомо ложных сведений,", "  " zaderzhka " ")
SendChat("say порочащих честь и достоинство другого лица или подрывающих", "  " zaderzhka " ")
SendChat("say его репутацию. Штраф - 20.000 рублей.", "  " zaderzhka " ")
Return

:?:/УК_5.1::
SendPlay {Enter}
SendChat("say Получение должностным лицом взятки в виде денег или", "  " zaderzhka " ")
SendChat("say другого имущества, прав или услуг имущественного", "  " zaderzhka " ")
SendChat("say характера за осуществление очевидно незаконных", "  " zaderzhka " ")
SendChat("say действий (бездействия). Штраф в полуторакратном", "  " zaderzhka " ")
SendChat("say размере от полученной взятки в случае её получения", "  " zaderzhka " ")
SendChat("say в виде денег или другого имущества, а также в", "  " zaderzhka " ")
SendChat("say размере 50.000 рублей в случае её получения в виде", "  " zaderzhka " ")
SendChat("say прав или услуг имущественного характера, а также", "  " zaderzhka " ")
SendChat("say арест сроком на 3 года.", "  " zaderzhka " ")
Return


:?:/УК_5.2::
SendPlay {Enter}
SendChat("say Дача взятки должностному лицу лично или через", "  " zaderzhka " ")
SendChat("say посредника, равно как и попытка дачи взятки.", "  " zaderzhka " ")
SendChat("say Арест сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_5.3::
SendPlay {Enter}
SendChat("say Посягательство на жизнь и здоровье сотрудника", "  " zaderzhka " ")
SendChat("say полиции, военнослужащего или работника инкассации.", "  " zaderzhka " ")
SendChat("say Арест сроком от 3 до 6 лет.", "  " zaderzhka " ")
Return

:?:/УК_5.4::
SendPlay {Enter}
SendChat("say Применение насилия, не опасного для жизни или", "  " zaderzhka " ")
SendChat("say здоровья, либо угроза применения насилия в отношении", "  " zaderzhka " ")
SendChat("say представителя власти или его близких в связи с", "  " zaderzhka " ")
SendChat("say исполнением им своих должностных обязанностей.", "  " zaderzhka " ")
SendChat("say Арест сроком до 3 лет.", "  " zaderzhka " ")
Return

:?:/УК_5.5::
SendPlay {Enter}
SendChat("say Хамство, борзость, дерзость по отношению к", "  " zaderzhka " ")
SendChat("say сотруднику правоохранительных органов. Штраф -", "  " zaderzhka " ")
SendChat("say 15.000 рублей или арест сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/УК_5.6::
SendPlay {Enter}
SendChat("say Публичное оскорбление или неоднократное проявление", "  " zaderzhka " ")
SendChat("say неуважения к представителям власти при исполнении", "  " zaderzhka " ")
SendChat("say ими своих должностных обязанностей или в связи с", "  " zaderzhka " ")
SendChat("say их исполнением. Штраф - 25.000 рублей или арест", "  " zaderzhka " ")
SendChat("say сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_5.7::
SendPlay {Enter}
SendChat("say Провокационные действия в отношении сотрудников", "  " zaderzhka " ")
SendChat("say государственных структур, несущие в себе негативный", "  " zaderzhka " ")
SendChat("say характер, либо развлекательную деятельность.", "  " zaderzhka " ")
SendChat("say Штраф - 50.000 рублей или арест сроком до 2 лет.", "  " zaderzhka " ")
Return

:?:/УК_5.7.1::
SendPlay {Enter}
SendChat("say Длительное преследование экипажа сотрудников", "  " zaderzhka " ")
SendChat("say правоохранительных органов и/или всяческое", "  " zaderzhka " ")
SendChat("say создание помех работе сотрудников правоохранительных", "  " zaderzhka " ")
SendChat("say органов. Штраф - 50.000 рублей или арест сроком", "  " zaderzhka " ")
SendChat("say до 2 лет.", "  " zaderzhka " ")
Return

:?:/УК_5.8::
SendPlay {Enter}
SendChat("say Неоднократное неповиновение законному распоряжению", "  " zaderzhka " ")
SendChat("say или требованию служащего полиции, либо", "  " zaderzhka " ")
SendChat("say военнослужащего, в связи с исполнением ими", "  " zaderzhka " ")
SendChat("say обязанностей по охране общественного порядка и", "  " zaderzhka " ")
SendChat("say обеспечению общественной безопасности, равно как", "  " zaderzhka " ")
SendChat("say воспрепятствование исполнению ими служебных", "  " zaderzhka " ")
SendChat("say обязанностей. Арест сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_5.8.1::
SendPlay {Enter}
SendChat("say Уход от правоохранительных органов, сопутствующий", "  " zaderzhka " ")
SendChat("say нанесение ущерба имуществу гражданским лицам,", "  " zaderzhka " ")
SendChat("say частным предприятиям и муниципальным предприятиям.", "  " zaderzhka " ")
SendChat("say Арест сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_5.8.2::
SendPlay {Enter}
SendChat("say Уход от правоохранительных органов, сопутствующий", "  " zaderzhka " ")
SendChat("say причинением телесных повреждений средней и выше", "  " zaderzhka " ")
SendChat("say тяжести по отношению к гражданскому лицу. Арест", "  " zaderzhka " ")
SendChat("say сроком на 4 года.", "  " zaderzhka " ")
Return

:?:/УК_5.9::
SendPlay {Enter}
SendChat("say Умышленное уничтожение, повреждение имущества", "  " zaderzhka " ")
SendChat("say правоохранительных и прочих государственных", "  " zaderzhka " ")
SendChat("say организаций. Штраф - 50.000 рублей или арест", "  " zaderzhka " ")
SendChat("say сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_5.10::
SendPlay {Enter}
SendChat("say Заведомо ложный донос о совершении преступления", "  " zaderzhka " ")
SendChat("say или ложные свидетельские показания по уголовному,", "  " zaderzhka " ")
SendChat("say административному делу. Штраф - 25.000 рублей", "  " zaderzhka " ")
SendChat("say или арест сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_5.11::
SendPlay {Enter}
SendChat("say Разглашение секретных данных или любых сведений о", "  " zaderzhka " ")
SendChat("say предстоящих операциях, именах, должностях и", "  " zaderzhka " ")
SendChat("say занимаемых постах служащих государственных", "  " zaderzhka " ")
SendChat("say организаций. Арест сроком до 3 лет.", "  " zaderzhka " ")
Return

:?:/УК_5.12::
SendPlay {Enter}
SendChat("say Представление себя в качестве служащего", "  " zaderzhka " ")
SendChat("say государственной организации, если это не", "  " zaderzhka " ")
SendChat("say соответствует действительности. Штраф - 30.000", "  " zaderzhka " ")
SendChat("say рублей или арест сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/УК_5.13::
SendPlay {Enter}
SendChat("say Халатность, то есть неисполнение или ненадлежащее", "  " zaderzhka " ")
SendChat("say исполнение должностным лицом своих обязанностей", "  " zaderzhka " ")
SendChat("say вследствие недобросовестного или небрежного", "  " zaderzhka " ")
SendChat("say отношения к службе либо обязанностей по должности,", "  " zaderzhka " ")
SendChat("say если это повлекло причинение крупного ущерба или", "  " zaderzhka " ")
SendChat("say существенное нарушение прав и законных интересов", "  " zaderzhka " ")
SendChat("say граждан или организаций. Арест сроком до 3 лет.", "  " zaderzhka " ")
Return

:?:/УК_6.1::
SendPlay {Enter}
SendChat("say Терроризм, то есть совершение взрыва, поджога или", "  " zaderzhka " ")
SendChat("say иных действий, устрашающих население и создающих", "  " zaderzhka " ")
SendChat("say опасность гибели человека, причинения", "  " zaderzhka " ")
SendChat("say значительного имущественного ущерба либо наступления", "  " zaderzhka " ")
SendChat("say иных тяжких последствий в целях дестабилизации", "  " zaderzhka " ")
SendChat("say деятельности органов власти, либо воздействия на", "  " zaderzhka " ")
SendChat("say принятие ими решений, а также угроза совершения", "  " zaderzhka " ")
SendChat("say указанных действий в целях воздействия на принятие", "  " zaderzhka " ")
SendChat("say решений органами власти. Арест сроком до 6 лет.", "  " zaderzhka " ")
Return

:?:/УК_6.2::
SendPlay {Enter}
SendChat("say Заведомо ложное сообщение о готовящихся взрыве,", "  " zaderzhka " ")
SendChat("say поджоге или иных действиях, создающих опасность", "  " zaderzhka " ")
SendChat("say гибели людей, причинения значительного", "  " zaderzhka " ")
SendChat("say имущественного ущерба либо наступления иных", "  " zaderzhka " ")
SendChat("say общественно опасных последствий. Штраф - 50.000", "  " zaderzhka " ")
SendChat("say рублей, а также арест сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_6.3::
SendPlay {Enter}
SendChat("say Захват или удержание лица в качестве заложника,", "  " zaderzhka " ")
SendChat("say совершенные в целях понуждения государства,", "  " zaderzhka " ")
SendChat("say организации или гражданина совершить какое-либо", "  " zaderzhka " ")
SendChat("say действие или воздержаться от совершения какого-либо", "  " zaderzhka " ")
SendChat("say действия как условия освобождения заложника.", "  " zaderzhka " ")
SendChat("say Арест сроком до 3 лет.", "  " zaderzhka " ")
Return

:?:/УК_6.4::
SendPlay {Enter}
SendChat("say Организация массовых беспорядков, равно участие в", "  " zaderzhka " ")
SendChat("say них, сопровождавшихся насилием, погромами,", "  " zaderzhka " ")
SendChat("say поджогами, уничтожением имущества, применением", "  " zaderzhka " ")
SendChat("say оружия, взрывных устройств, отравляющих либо иных", "  " zaderzhka " ")
SendChat("say веществ и предметов, представляющих опасность для", "  " zaderzhka " ")
SendChat("say окружающих. Штраф — 100.000 рублей и арест сроком", "  " zaderzhka " ")
SendChat("say до 6 лет.", "  " zaderzhka " ")
Return

:?:/УК_6.5::
SendPlay {Enter}
SendChat("say Создание устойчивой группы людей в целях нападения", "  " zaderzhka " ")
SendChat("say на граждан или организации, равно как и руководство", "  " zaderzhka " ")
SendChat("say такой группой (бандой) или участие в его", "  " zaderzhka " ")
SendChat("say деятельности. Арест сроком до 6 лет.", "  " zaderzhka " ")
Return

:?:/УК_6.6::
SendPlay {Enter}
SendChat("say Вандализм, то есть осквернение зданий или иных", "  " zaderzhka " ")
SendChat("say сооружений, порча имущества на общественном", "  " zaderzhka " ")
SendChat("say транспорте или в иных общественных местах. Штраф -", "  " zaderzhka " ")
SendChat("say 10.000 рублей, а также арест сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/УК_6.7::
SendPlay {Enter}
SendChat("say Незаконное проникновение в жилище, частную", "  " zaderzhka " ")
SendChat("say территорию либо иной объект, не принадлежащий", "  " zaderzhka " ")
SendChat("say проникшему лицу, совершенное против воли", "  " zaderzhka " ")
SendChat("say проживающего в нем лица. Арест сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_6.8::
SendPlay {Enter}
SendChat("say Самовольное проникновение на охраняемый в", "  " zaderzhka " ")
SendChat("say установленном порядке объект. Штраф - 10.000 рублей", "  " zaderzhka " ")
SendChat("say или арест сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_6.9::
SendPlay {Enter}
SendChat("say Приобретение, передача, сбыт, хранение,", "  " zaderzhka " ")
SendChat("say перевозка, продажа, использование или ношение", "  " zaderzhka " ")
SendChat("say огнестрельного оружия, его основных частей,", "  " zaderzhka " ")
SendChat("say боеприпасов. Штраф - 20.000 рублей, а также арест", "  " zaderzhka " ")
SendChat("say сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_6.10::
SendPlay {Enter}
SendChat("say Незаконные приобретение, хранение, перевозка,", "  " zaderzhka " ")
SendChat("say изготовление, переработка, продажа наркотических", "  " zaderzhka " ")
SendChat("say средств, психотропных веществ или их аналогов с", "  " zaderzhka " ")
SendChat("say любой целью. Штраф - 20.000 рублей, а также арест", "  " zaderzhka " ")
SendChat("say сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_6.11::
SendPlay {Enter}
SendChat("say Неоказание первой или медицинской помощи больному", "  " zaderzhka " ")
SendChat("say без уважительных причин лицом, обязанным ее", "  " zaderzhka " ")
SendChat("say оказывать в соответствии с законодательством.", "  " zaderzhka " ")
SendChat("say Арест сроком на 1 год.", "  " zaderzhka " ")
Return

:?:/УК_6.12::
SendPlay {Enter}
SendChat("say Попытка срыва мероприятий группой лиц или", "  " zaderzhka " ")
SendChat("say намеренная помеха в проведении мероприятий. Арест", "  " zaderzhka " ")
SendChat("say сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_6.13::
SendPlay {Enter}
SendChat("say Использование не зарегистрированной лицензии и(или)", "  " zaderzhka " ")
SendChat("say подделка удостоверения или иного официального", "  " zaderzhka " ")
SendChat("say документа, предоставляющего права или", "  " zaderzhka " ")
SendChat("say освобождающего от обязанностей, в целях его", "  " zaderzhka " ")
SendChat("say использования либо сбыт такого документа и(или)", "  " zaderzhka " ")
SendChat("say лицензии. Штраф - 20.000 рублей, а также арест", "  " zaderzhka " ")
SendChat("say сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_6.14::
SendPlay {Enter}
SendChat("say Превышение должностных полномочий. Совершение", "  " zaderzhka " ")
SendChat("say должностным лицом действий, явно выходящих за", "  " zaderzhka " ")
SendChat("say пределы его полномочий и повлекших существенное", "  " zaderzhka " ")
SendChat("say нарушение прав и законных интересов граждан или", "  " zaderzhka " ")
SendChat("say организаций либо охраняемых законом интересов", "  " zaderzhka " ")
SendChat("say общества или государства. Штраф - до 50.000", "  " zaderzhka " ")
SendChat("say рублей или арест сроком до 3 лет.", "  " zaderzhka " ")
Return

:?:/УК_7.1::
SendPlay {Enter}
SendChat("say Мошенничество, то есть хищение чужого имущества", "  " zaderzhka " ")
SendChat("say или приобретение права на чужое имущество путем", "  " zaderzhka " ")
SendChat("say обмана или злоупотребления доверием. Штраф -", "  " zaderzhka " ")
SendChat("say 50.000 рублей и возмещение ущерба или арест сроком", "  " zaderzhka " ")
SendChat("say на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_7.2::
SendPlay {Enter}
SendChat("say Грабеж или кража чужого имущества. Арест сроком", "  " zaderzhka " ")
SendChat("say на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_7.3::
SendPlay {Enter}
SendChat("say Вымогательство, то есть требование передачи", "  " zaderzhka " ")
SendChat("say чужого имущества под угрозой применения насилия,", "  " zaderzhka " ")
SendChat("say уничтожения имущества, распространения позорящих", "  " zaderzhka " ")
SendChat("say сведений. Арест сроком на 3 года.", "  " zaderzhka " ")
Return

:?:/УК_7.4::
SendPlay {Enter}
SendChat("say Умышленные уничтожение или повреждение чужого", "  " zaderzhka " ")
SendChat("say имущества, если эти деяния повлекли причинение", "  " zaderzhka " ")
SendChat("say значительного ущерба. Штраф - 50.000 рублей и", "  " zaderzhka " ")
SendChat("say возмещение ущерба или арест сроком на 2 года.", "  " zaderzhka " ")
Return

:?:/УК_7.5::
SendPlay {Enter}
SendChat("say Организация, проведение азартных игр в любой", "  " zaderzhka " ")
SendChat("say форме в общественных местах. Штраф - 50.000 рублей", "  " zaderzhka " ")
SendChat("say или арест сроком на 2 года.", "  " zaderzhka " ")
Return


0001DUVD7:
SendPlay {Enter}
SendChat("say Здравия желаю! " rankDUVD7 " полиции, по г. Город " CityDUVD7 " NameDUVD7 " " SurnameDUVD7 "., "  " zaderzhka " ")
Return


0002DUVD7:
SendPlay {Enter}
SendChat("say Гражданин, предоставьте документ, удостоверяющий вашу личность.", "  " zaderzhka " ")
SendChat("b Для этого необходимо написать в чат /pass ID", "  " zaderzhka " ")
Return

0003DUVD7:
SendPlay {Enter}
SendChat("me изучает документы", "  " zaderzhka " ")
SendChat("do Личность гражданина установлена.", "  " zaderzhka " ")
Return


0004DUVD7:
InputBox, id, Ввод данных, Введите id человека, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
InputBox, star, Ввод данных, Введите количество звезд, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
InputBox, reason, Ввод данных, Введите причину, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
IniWrite %id%, %FilePath%, %DataGroup%, NumberCall
IniWrite %star%, %FilePath%, %DataGroup%, NumberCall
IniWrite %reason%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы ввели:ID %id% Количество звезд:%star% Причина:%reason% Разворачивайте игру!
Sleep 7000
SendPlay {Enter}
SendChat("do Рация висит на поясе.", "  " zaderzhka " ")
SendChat("me снял" floor " рацию, связался с диспетчером и передал" floor " ориентировку на гражданского ", "  " zaderzhka " ")
SendChat("do Нарушитель объявлен в розыск.", "  " zaderzhka " ")
SendChat("su " id " " su " " reason " ", "  " zaderzhka " ")
Return

0005DUVD7:
SendPlay {Enter}
SendChat("do Упаковка влажных салфеток в кармане.", "  " zaderzhka " ")
SendChat("me достал" floor " салфетки и протер лицо гражданину.", "  " zaderzhka " ")
SendChat("me убрал" floor " салфетки обратно", "  " zaderzhka " ")
Return

0006DUVD7:
SendPlay {Enter}
SendChat("do КПК находится в кармане.", "  " zaderzhka " ")
SendChat("me достал" floor " КПК, сделал фото лица", "  " zaderzhka " ")
SendChat("me нажал" floor " 'Отправить и опознать'", "  " zaderzhka " ")
SendChat("do На экране появились данные.", "  " zaderzhka " ")
SendChat("me убрал" floor " КПК в карман", "  " zaderzhka " ")
Return

0007DUVD7:
SendPlay {Enter}
SendChat("me снял" floor " ключ с пояса и застегнул" floor " наручники", "  " zaderzhka " ")
SendChat("todo Распишитесь здесь*указав место для подписи", "  " zaderzhka " ")
Return

0008DUVD7:
SendPlay {Enter}
SendChat("do Рация на нагрудном кармане.", "  " zaderzhka " ")
SendChat("me взял" floor " рацию и вызвал" floor " конвоира", "  " zaderzhka " ")
SendChat("todo  На связи [" PozyvnoyDUVD7 "] [" surnameDUVD7 "]. Товарищ конвоир, уведите правонарушителя в камеру*говоря в рацию", "  " zaderzhka " ")
Return

0009DUVD7:
SendPlay {Enter}
SendChat("me достал" floor " планшет с протоколом", "  " zaderzhka " ")
SendChat("do Протокол" floor " содержит: дату, время, место и статью.", "  " zaderzhka " ")
SendChat("todo Распишитесь, уважаемый?*поставив свою подпись и инициалы в протоколе", "  " zaderzhka " ")
Return

00010DUVD7:
SendPlay {Enter}
SendChat("me посадил" floor " задержанного в автомобиль", "  " zaderzhka " ")
Return

00011DUVD7:
InputBox, id, Ввод данных, Введите id человека, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
IniWrite %id%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы ввели:ID %id% Разворачивайте игру!
Sleep 7000
SendPlay {Enter}
SendChat("do Конвоир подошёл к задержанному.", "  " zaderzhka " ")
SendChat("me передал" floor " рапорт и личные вещи", "  " zaderzhka " ")
SendChat("arrest " id " ", "  " zaderzhka " ")
Return

00012DUVD7:
InputBox, id, Ввод данных, Введите id человека, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
IniWrite %id%, %FilePath%, %DataGroup%, NumberCall
MsgBox, 48, Предупреждение, Вы ввели:ID %id% Разворачивайте игру!
Sleep 7000
SendPlay {Enter}
SendChat("me отпустил" floor " руки задержанного", "  " zaderzhka " ")
SendChat("dearr id", "  " zaderzhka " ")
Return

00013DUVD7:
SendPlay {Enter}
SendChat("do Рация на нагрудном кармане.", "  " zaderzhka " ")
SendChat("me запросил" floor " последние координаты преступника", "  " zaderzhka " ")
Return

00014DUVD7:
SendPlay {Enter}
SendChat("me нажал" floor " кнопку рации", "  " zaderzhka " ")
SendChat("ro [ГУВД] Принято! Выезжаем на подмогу!", "  " zaderzhka " ")
Return

00015DUVD7:
SendPlay {Enter}
SendChat("do Мегафон лежит на торпеде.", " " zaderzhka " ")
SendChat("me взял" floor " мегафон в руку и начал" floor " в него говорить", " " zaderzhka " ")
SendChat("m Гражданин, немедленно остановитесь! В противном случае будет открыт огонь!", " " zaderzhka " ")
Return

00016DUVD7:
SendPlay {Enter}
SendChat("s Останавливаемся! В противном случае будут применены силовые меры!", " " zaderzhka " ")
Return

00017DUVD7:
SendPlay {Enter}
SendChat("do На торпеде лежит бланк, протокол и ручка.", " " zaderzhka " ")
SendChat("me взяв бланк и ручку, составил" floor " протокол о нарушении", " " zaderzhka " ")
SendChat("do Бланк протокола заполнен и подписан.", " " zaderzhka " ")
Return

00018DUVD7:
SendPlay {Enter}
SendChat("say Вот протокол о Вашем нарушении. Прошу поставить подпись.", " " zaderzhka " ")
SendChat("me передал" floor " бланк с протоколом гражданину", " " zaderzhka " ")
SendChat("b /me поставил подпись", " " zaderzhka " ")
Return

00019DUVD7:
InputBox, id, Ввод данных, Введите id человека, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
InputBox, summa, Ввод данных, Введите сумму, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
InputBox, reason, Ввод данных, Введите причину, затем нажмите "OK"
if (ErrorLevel) {
    MsgBox, 16, Ошибка,  Вы отменили ввод данных. Скрипт остановлен.
    Return
}
MsgBox, 48, Предупреждение, Вы ввели:ID %id% Cумма:%star% Причина:%reason% Разворачивайте игру!

SendPlay {Enter}
SendChat("me оторвал" floor " копию протокола и передал" floor " её гражданину", " " zaderzhka " ")
SendChat("say Вот Ваша копия протокола. Надеюсь, Вы больше не будете нарушать.", " " zaderzhka " ")
SendChat("tsu " id " " su " " summa " ", "  " zaderzhka " ")
Return




InfoDUVD7:

SoundPlay,  C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3

Gui, 15:Destroy,
Gui, 15:Add, Picture, x0 y10 w475   h720 +BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\Vod.png
Gui, 15:Add, Picture, x470 y700 w64 h64   +BackgroundTrans gChange, C:\ProgramData\KPRP\KPRP-main\Ok_64.png

Gui, 15:Font, S15 C%Tsvet_1% Bold, Consolas
Gui, 15:Add, ComboBox, x90 y40  w425 vrankDUVD7, %rankDUVD7%||Рядовой|Сержант|Старшина|Прапорщик|Лейтенант|Старший лейтенант|Капитан|Майор|Подполковник|Полковник|Генерал
Gui, 15:Add, ComboBox, x90 y120 w425 vCityDUVD7, %CityDUVD7%||Приволжск|Мирный|Невский
Gui, 15:Add, ComboBox, x90 y230 w425 vTegDUVD7, %TegDUVD7%||Нач. ГУВД|Первый Зам. Нач. ГУВД|Зам. Нач. ГУВД|Нач. ОМОН|Нач. УгРО|Нач. ППС|Нач. ПА|Зам. Нач. ОМОН|Зам. Нач. УгРО|Зам. Нач. ППС|Зам. Нач. ПА|ОМОН|УгРо|ППС|ПА
Gui, 15:Add, Edit, x90 y320 w425 vNameDUVD7, %NameDUVD7%
Gui, 15:Add, Edit, x90 y420 w425 vsurnameDUVD7, %surnameDUVD7%
Gui, 15:Add, Edit, x90 y520 w425 vOtchetskstoDUVD7,%OtchetskstoDUVD7%
Gui, 15:Add, Edit, x90 y620 w425 vPozyvnoyDUVD7,%PozyvnoyDUVD7%
Gui, 15:Add, DropDownList, x90 y710  w225 vpol, %pol%||Мужской|Женский

Gui, 15:show, center , Данные
Return



EditDUVD7:
SoundPlay,   C:\ProgramData\KPRP\KPRP-main\muzyka_14.mp3


Gui, 14:Destroy,

IniRead, 11DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 11DUVD7
IniRead, 21DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 21DUVD7
IniRead, 31DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 31DUVD7
IniRead, 41DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 41DUVD7
IniRead, 51DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 51DUVD7
IniRead, 61DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 61DUVD7
IniRead, 71DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 71DUVD7
IniRead, 81DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 81DUVD7
IniRead, 91DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 91DUVD7
IniRead, 101DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 101DUVD7
IniRead, 111DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 111DUVD7
IniRead, 121DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 121DUVD7
IniRead, 131DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 131DUVD7
IniRead, 141DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 141DUVD7
IniRead, 151DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 151DUVD7
IniRead, 161DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 161DUVD7
IniRead, 171DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 171DUVD7
IniRead, 181DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 181DUVD7
IniRead, 191DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 191DUVD7
IniRead, 201DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 201DUVD7
IniRead, 211DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 211DUVD7
IniRead, 221DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 221DUVD7
IniRead, 231DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 231DUVD7
IniRead, 241DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 241DUVD7
IniRead, 251DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 251DUVD7
IniRead, 261DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 261DUVD7
IniRead, 271DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 271DUVD7
IniRead, 281DUVD7,  C:\ProgramData\KPRP\KPRP-main\Raskladka_DUVD7.ini , Edit, 281DUVD7


Gui, 14:Font, S11 C%Tsvet_1% Bold, Arial
Gui, 14:Add, Hotkey, x100 y38 w150  v11DUVD7, %odinDUVD7%
Gui, 14:Add, Hotkey, x100 y138 w150 v21DUVD7, %dvaDUVD7%
Gui, 14:Add, Hotkey, x100 y228 w150 v31DUVD7, %triDUVD7%
Gui, 14:Add, Hotkey, x100 y318 w150 v41DUVD7, %chetireDUVD7%
Gui, 14:Add, Hotkey, x100 y418 w150 v51DUVD7, %pyatDUVD7%
Gui, 14:Add, Hotkey, x100 y508 w150 v61DUVD7, %shestDUVD7%
Gui, 14:Add, Hotkey, x100 y600 w150 v71DUVD7, %semDUVD7%

Gui, 14:Add, Hotkey, x400 y38 w150 v81DUVD7, %vosemDUVD7%
Gui, 14:Add, Hotkey, x400 y138 w150 v91DUVD7, %devyatDUVD7%
Gui, 14:Add, Hotkey, x400 y228 w150 v101DUVD7, %desyatDUVD7%
Gui, 14:Add, Hotkey, x400 y318 w150 v111DUVD7, %odinadcatDUVD7%
Gui, 14:Add, Hotkey, x400 y418 w150 v121DUVD7, %dvinadcatDUVD7%
Gui, 14:Add, Hotkey, x400 y508 w150 v131DUVD7, %trinadcatDUVD7%
Gui, 14:Add, Hotkey, x400 y600 w150 v141DUVD7, %chetirnadcatDUVD7%

Gui, 14:Add, Hotkey, x700 y38 w150 v151DUVD7, %pyatnadcatDUVD7%
Gui, 14:Add, Hotkey, x700 y138 w150 v161DUVD7, %shestnadcatDUVD7%
Gui, 14:Add, Hotkey, x700 y228 w150 v171DUVD7, %semnagcatDUVD7%
Gui, 14:Add, Hotkey, x700 y318 w150 v181DUVD7, %vosemnagcatDUVD7%
Gui, 14:Add, Hotkey, x700 y418 w150 v191DUVD7, %devyatnadcatDUVD7%
Gui, 14:Add, Hotkey, x700 y508 w150 v201DUVD7, %dvadcatDUVD7%
Gui, 14:Add, Hotkey, x700 y600 w150 v211DUVD7, %dvadcatodinDUVD7%


Gui, 14:Add, Hotkey, x1000 y38 w150 v221DUVD7, %dvadcatdvaDUVD7%
Gui, 14:Add, Hotkey, x1000 y138 w150 v231DUVD7, %dvadcattriDUVD7%
Gui, 14:Add, Hotkey, x1000 y228 w150 v241DUVD7, %dvadcatchetireDUVD7%
Gui, 14:Add, Hotkey, x1000 y318 w150 v251DUVD7, %dvadcatpyatDUVD7%
Gui, 14:Add, Hotkey, x1000 y418 w150 v261DUVD7, %dvadcatshestDUVD7%
Gui, 14:Add, Hotkey, x1000 y508 w150 v271DUVD7, %dvadcatsemDUVD7%
Gui, 14:Add, Hotkey, x1000 y600 w150 v281DUVD7, %dvadcatvosemDUVD7%



Gui, 14:Add, Picture, x1170 y610 w64 h64  gSave1,  C:\ProgramData\KPRP\KPRP-main\Ok_64.png
Gui, 14:Add, Picture, x0 y5 w1200 h675 + BackgroundTrans, C:\ProgramData\KPRP\KPRP-main\Raskladka
Gui, 14:Show, center, Раскладка

Return