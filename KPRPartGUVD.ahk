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