import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_component.dart';
import 'hero_service.dart';
import 'dart:async';

@Component(
	selector: 'my-heroes',
	templateUrl: 'hero_list_component.html',
	styleUrls: ['hero_list_component.css'],
	directives: [coreDirectives, HeroComponent],
)

class HeroListComponent implements OnInit {
	final HeroService _heroService;

	List<Hero> heroes;
	Hero selected;

	HeroListComponent(this._heroService);

	void ngOnInit() => _getHeroes();

	Future<void> _getHeroes() async {
		heroes = await _heroService.getAll();
	}

	// The onSelect method that occurs when the user clicks on a hero
	void onSelect(Hero hero) => selected = hero;
}
