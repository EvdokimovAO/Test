
#Область ОбработчикиСобытий

Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	
	ПользовательИБ = ПользователиИнформационнойБазы.ТекущийПользователь();
	
	Пользователь = Справочники.Пользователи.НайтиПоРеквизиту("ИдентификаторПользователяИБ", 
		ПользовательИБ.УникальныйИдентификатор);
		
	ПараметрыСеанса.ТекущийПользователь = Пользователь;
	
	Если Не ЗначениеЗаполнено(Пользователь) Тогда
		Сообщение = Новый СообщениеПользователю();
		Сообщение.Текст = "Не найдет текущий пользователь в справончике Пользователи. Обратитесь к Администратору.";
		Сообщение.Сообщить();
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти
