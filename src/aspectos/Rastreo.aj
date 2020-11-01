package aspectos;

public aspect Rastreo {
	
	pointcut losMetodosPublicos(Object t):
		target(t) &&
		execution(* com.ecodeup.controller..*(..)) &&
		!within(Rastreo);
	
	before(Object t): losMetodosPublicos(t){
		System.out.println("Entrando: " + thisJoinPoint.getSignature());
	}

}
