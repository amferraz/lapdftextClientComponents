package edu.isi.bmkeg.lapdftextModule.controller
{	
	import org.robotlegs.mvcs.Command;
	
	import edu.isi.bmkeg.digitalLibrary.rl.services.IDigitalLibraryService;
	import edu.isi.bmkeg.digitalLibrary.model.citations.Corpus;
	import edu.isi.bmkeg.digitalLibrary.rl.events.*;
	
	import flash.events.Event;
	
	public class InsertJournalEpochCommand extends Command
	{
	
		[Inject]
		public var event:InsertJournalEpochEvent;

		[Inject]
		public var service:IDigitalLibraryService;
				
		override public function execute():void
		{
			service.insertJournalEpoch(event.object);
		}
		
	}
	
}