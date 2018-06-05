import 'package:angular/angular.dart';
import 'src/hero_service.dart';
import 'package:angular_router/angular_router.dart';

@Component(
	selector: 'my-app',
	template: '''
		<h1>{{title}}</h1>
		<my-heroes></my-heroes>
	''',
	directives: [routerDirectives],
	providers: [const ClassProvider(HeroService)]
)

class AppComponent {
	final title = 'Tour of Heroes';
}