#!/bin/bash

# https://results.cik.bg/minr2015/tur1/mestni/0101.html
if [ ! -d ./files/elections/2015_regional/csv1 ]; then
  mkdir -p ./files/elections/2015_regional
  if [ ! -f ./files/elections/2015_regional/csv1.zip ]; then
    curl https://results.cik.bg/minr2015/tur1/mi2015.zip --output ./files/elections/2015_regional/csv1.zip
    curl https://results.cik.bg/minr2015/tur2/mi2015.zip --output ./files/elections/2015_regional/csv2.zip
  fi

  # For MacOS use The Unarchiver and select Cyrilic(MacOS)
  unzip ./files/elections/2015_regional/csv1.zip -d ./files/elections/2015_regional/csv1
  unzip ./files/elections/2015_regional/csv2.zip -d ./files/elections/2015_regional/csv2


  if grep '"ЗАЕДНО ЗА ОБЩИНА БАНСКО" - ВМРО, ББЦ, ДСХ, АТАКА' ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt.orig

    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt.orig
  fi

  if grep '"ЗАЕДНО ЗА ОБЩИНА БАНСКО" - ВМРО, ББЦ, ДСХ, АТАКА' ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt.orig

    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt.orig
  fi

  if grep '"ВАРНА"-АТАКА, ВЪЗРАЖДАНЕ, НОВА СИЛА' ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/"ВАРНА"-АТАКА, ВЪЗРАЖДАНЕ, НОВА СИЛА/ВАРНА-АТАКА, ВЪЗРАЖДАНЕ, НОВА СИЛА/g' ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt.orig

    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/КР/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КР/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/"ВАРНА"-АТАКА, ВЪЗРАЖДАНЕ, НОВА СИЛА/ВАРНА-АТАКА, ВЪЗРАЖДАНЕ, НОВА СИЛА/g' ./files/elections/2015_regional/csv1/КР/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/КР/local_parties_25.10.2015.txt.orig
  fi


  if grep '"ЗАЕДНО ЗА ОБЩИНА БАНСКО" - ВМРО, ББЦ, ДСХ, АТАКА' ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt.orig

    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt && rm ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt.orig
  fi


  if grep '"НАДЕЖДА"(БДЦ, РБ, НФСБ, НДСВ)' ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt.orig

    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv2/КК/local_parties_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КК/local_parties_01.11.2015.txt.orig
    sed -E -i '.orig' 's/Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)/"Коалиция: „ДА ЗА ДИМИТРОВГРАД” \(партия ЕДИННА НАРОДНА ПАРТИЯ; партия ВМРО-БЪЛГАРСКО НАЦИОНАЛНО ДВИЖЕНИЕ; партия ПОЛИТИЧЕСКИ КЛУБ „ЕКОГЛАСНОСТ”; партия ОБЕДИНЕНА СОЦИАЛДЕМОКРАЦИЯ; партия БЪЛГАРИЯ БЕЗ ЦЕНЗУРА; коалиция РЕФОРМАТОРСКИ БЛОК; партия БЪЛГАРСКА СОЦИAЛДЕМОКРАТИЧЕСКА ПАРТИЯ\)"/g' ./files/elections/2015_regional/csv2/КК/local_parties_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КК/local_parties_01.11.2015.txt.orig
  fi


  if grep 'МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ПП"БЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР"- БДЦ ; ПП "НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОД"НДСВ;КП НАРОДЕН СЪЮЗ; КП "РЕФОРМАТОРСКИ БЛОК"' ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt; then
    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt.orig


    sed -E -i '.orig' 's/"/''/g' ./files/elections/2015_regional/csv2/КО/local_parties_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КО/local_parties_01.11.2015.txt.orig
    sed -E -i '.orig' 's/МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК/"МЕСТНА КОАЛИЦИЯ-БЪДЕЩЕ ЗА ГРАМАДА-ВКЛЮЧВАЩА-ППБЪЛГАРСКИ ДЕМОКРАТИЧЕН ЦЕНТЪР- БДЦ ; ПП НАЦИОНАЛНО ДВИЖЕНИЕ ЗА СТАБИЛНОСТ И ВЪЗХОДНДСВ;КП НАРОДЕН СЪЮЗ; КП РЕФОРМАТОРСКИ БЛОК"/g' ./files/elections/2015_regional/csv2/КО/local_parties_01.11.2015.txt && rm ./files/elections/2015_regional/csv2/КО/local_parties_01.11.2015.txt.orig

  fi
fi


if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2015_regional/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/cik_parties_25.10.2015.txt _2015_mayor_1_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/local_candidates_25.10.2015.txt _2015_mayor_1_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/local_parties_25.10.2015.txt _2015_mayor_1_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/protocols_25.10.2015.txt _2015_mayor_1_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/sections_25.10.2015.txt _2015_mayor_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КК/votes_25.10.2015.txt _2015_mayor_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/cik_parties_25.10.2015.txt _2015_mayor_municipality_1_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/local_candidates_25.10.2015.txt _2015_mayor_municipality_1_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/local_parties_25.10.2015.txt _2015_mayor_municipality_1_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/protocols_25.10.2015.txt _2015_mayor_municipality_1_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/sections_25.10.2015.txt _2015_mayor_municipality_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КО/votes_25.10.2015.txt _2015_mayor_municipality_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/cik_parties_25.10.2015.txt _2015_mayor_region_1_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/local_candidates_25.10.2015.txt _2015_mayor_region_1_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/local_parties_25.10.2015.txt _2015_mayor_region_1_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/protocols_25.10.2015.txt _2015_mayor_region_1_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/sections_25.10.2015.txt _2015_mayor_region_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/КР/votes_25.10.2015.txt _2015_mayor_region_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/cik_parties_25.10.2015.txt _2015_council_region_1_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/local_candidates_25.10.2015.txt _2015_council_region_1_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/local_parties_25.10.2015.txt _2015_council_region_1_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/protocols_25.10.2015.txt _2015_council_region_1_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/sections_25.10.2015.txt _2015_council_region_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv1/ОС/votes_25.10.2015.txt _2015_council_region_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/cik_parties_01.11.2015.txt _2015_mayor_2_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/local_candidates_01.11.2015.txt _2015_mayor_2_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/local_parties_01.11.2015.txt _2015_mayor_2_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/protocols_01.11.2015.txt _2015_mayor_2_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/sections_01.11.2015.txt _2015_mayor_2_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КК/votes_01.11.2015.txt _2015_mayor_2_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/cik_parties_01.11.2015.txt _2015_mayor_municipality_2_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/local_candidates_01.11.2015.txt _2015_mayor_municipality_2_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/local_parties_01.11.2015.txt _2015_mayor_municipality_2_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/protocols_01.11.2015.txt _2015_mayor_municipality_2_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/sections_01.11.2015.txt _2015_mayor_municipality_2_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КО/votes_01.11.2015.txt _2015_mayor_municipality_2_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/cik_parties_01.11.2015.txt _2015_mayor_region_2_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/local_candidates_01.11.2015.txt _2015_mayor_region_2_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/local_parties_01.11.2015.txt _2015_mayor_region_2_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/protocols_01.11.2015.txt _2015_mayor_region_2_cik_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/sections_01.11.2015.txt _2015_mayor_region_2_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2015_regional/csv2/КР/votes_01.11.2015.txt _2015_mayor_region_2_votes"

  cp ./db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2015_regional/convert.sql"
