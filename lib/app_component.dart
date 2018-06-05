import 'package:angular/angular.dart';

@Component(
	selector: 'my-app',
	template: '''
  		<h1>{{title}}</h1>
  		<h2>{{hero}}</h2>
	''',
)
class AppComponent {
	final title = 'Tour of Heroes';
	var hero = 'Windstorm';
}
