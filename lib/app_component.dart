import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';
import 'dart:async';

@Component(
	selector: 'my-app',
	templateUrl: 'app_component.html',
	styleUrls: ['app_component.css'],
	directives: [coreDirectives, HeroComponent],
	providers: [const ClassProvider(HeroService)],
)

class AppComponent implements OnInit {
	final title = 'Tour of Heroes';
	final HeroService _heroService;

	List<Hero> heroes;
	Hero selected;

	AppComponent(this._heroService);

	void ngOnInit() => _getHeroes();

	Future<void> _getHeroes() async {
		heroes = await _heroService.getAll();
	}

	// The onSelect method that occurs when the user clicks on a hero
	void onSelect(Hero hero) => selected = hero;
}
