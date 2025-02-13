﻿# language: ru
# encoding: utf-8
#parent ua:
@UA16_парсить_features
#parent uf:
@UF1_загрузка_и_обработка_features

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb





Функционал: Проверка чтения условия с пустой секцией Иначе

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой




Сценарий: Проверка чтения условия с пустой секцией Иначе. Новый парсер.

	* Загрузка тестовой фичи
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "FeatureReader/ДляПроверкиПустойСекцииИначе"
				
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'
		И я устанавливаю флаг с именем 'ИспользоватьПарсерGherkinИзКомпонентыVanessaExt'
			
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
	
	* Проверка результата		
		Тогда таблица 'ДеревоТестов' стала равной:
			| "Наименование"                         | "Статус"  |
			| "ДляПроверкиПустойСекцииИначе.feature" | ""        |
			| "ДляПроверкиПустойСекцииИначе"         | ""        |
			| "ДляПроверкиПустойСекцииИначе"         | "Success" |
			| "Если \'Ложь\' Тогда"                  | "Success" |
			| "Иначе"                                | ""        |
			| "И Пауза 1"                            | "Success" |
		
				
		
Сценарий: Проверка передачи обычных параметров. Старый парсер.

	* Загрузка тестовой фичи
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "FeatureReader/ДляПроверкиПустойСекцииИначе"
				
		И я перехожу к закладке с именем "ГруппаНастройки"
		И я устанавливаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'
		И Пауза 1
		И я снимаю флаг с именем 'ИспользоватьПарсерGherkinИзКомпонентыVanessaExt'
		И Пауза 1
		И я снимаю флаг с именем 'ИспользоватьКомпонентуVanessaExt'
			
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
		И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
		
	
	* Проверка результата		
		Тогда таблица 'ДеревоТестов' стала равной:
			| "Наименование"                         | "Статус"  |
			| "ДляПроверкиПустойСекцииИначе.feature" | ""        |
			| "ДляПроверкиПустойСекцииИначе"         | ""        |
			| "ДляПроверкиПустойСекцииИначе"         | "Success" |
			| "Если \'Ложь\' Тогда"                  | "Success" |
			| "Иначе"                                | ""        |
			| "И Пауза 1"                            | "Success" |
		
			
			