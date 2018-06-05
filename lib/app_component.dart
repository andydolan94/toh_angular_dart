import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
	selector: 'my-app',
	templateUrl: 'app_component.html',
	styleUrls: ['app_component.css'],
	directives: [coreDirectives, HeroComponent],
)

class AppComponent {
	final title = 'Tour of Heroes';
	List<Hero> heroes = mockHeroes;
	Hero selected;

	// TODO: YOU ARE HERE
	final HeroService _heroService;
	AppComponent(this._heroService);

	// The onSelect method that occurs when the user clicks on a hero
	void onSelect(Hero hero) => selected = hero;
}
