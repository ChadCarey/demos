/*
* Strategy.cpp
* This file contains an example of the strategy desing pattern
* About: The Strategy design pattern 
*	-This will allow you to change the capabilities at run time
*	 example: suddenly a cat can fly
*/

#include <iostream>
using namespace std;


/*virtual*/class Flys
{
public:
	/*
 	* flys() is a abstract class
 	* =0 makes it so that this object can't be used 
 	* without first overriding this function in another class 
 	* (this is a virtual or abstract class) 
	*/
	virtual string flys() =0;
};

/*
* This is one of the methods that can be given to an animal
*/
class CanFly: public Flys
{
public:
	string flys() 
	{
		return "can fly!";
	}
};

class CantFly: public Flys
{
public:
	string flys() 
	{
		return "can't fly!";
	}
};

class Animal
{
public:

	virtual string fly() 
	{
		return flyMethod->flys();
	}

	void setFlyingAbility(Flys *f)
	{
		if(flyMethod != NULL)
			delete flyMethod;
		flyMethod = f;
	}

	void setName(const string &n)
	{
		name = n;
	}

	string getName()
	{
		return name;
	}
protected:
	Flys * flyMethod; 
	string name;
};

class Cat: public Animal
{
public:
	Cat()
	{
		setFlyingAbility(new CantFly());
	}
};

int main()
{
	Animal * cat = new Cat();
	cat->setName("Shadow");
	cout << cat->getName() << " " << cat->fly() << endl;
	cout << cat->getName() << " ate a radioactive bird and mutated!" << endl;
	cat->setFlyingAbility(new CanFly());
	cout << cat->getName() << " " << cat->fly() << endl;

	return 0;
}