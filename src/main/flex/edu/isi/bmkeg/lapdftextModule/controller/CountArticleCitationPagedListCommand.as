package edu.isi.bmkeg.lapdftextModule.controller
{	
	import edu.isi.bmkeg.pagedList.events.*;
	
	import edu.isi.bmkeg.digitalLibrary.model.citations.Corpus;
	import edu.isi.bmkeg.digitalLibrary.rl.services.IDigitalLibraryService;

	import edu.isi.bmkeg.lapdftextModule.model.LapdftextModel;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Command;
	
	public class CountArticleCitationPagedListCommand extends Command
	{
	
		[Inject]
		public var event:CountPagedListLengthEvent;

		[Inject]
		public var model:LapdftextModel;
		
		[Inject]
		public var digLibService:IDigitalLibraryService;
		
		override public function execute():void {
			
			if( model.queryLiteratureCitation != null ) {
				digLibService.countArticleCitation(model.queryLiteratureCitation);
			}
			
		}
		
	}
	
}