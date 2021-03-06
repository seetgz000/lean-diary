import { InMemoryDbService } from 'angular-in-memory-web-api';


export class InMemoryDataService implements InMemoryDbService {
  createDb() {
    const foods = [
      { id: 1, name: 'food1', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'lunch', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food1.png"},
      { id: 2, name: 'food2', 
        subtitle: 'Tofu, Rice, Soy Sauce', 
        meal:'lunch', 
        tags:['high protein', 'low carb', 'vegetarian'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food2.png" },
      { id: 3, name: 'food3', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food3.png" },
      { id: 4, name: 'food4', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food4.png" },
      { id: 5, name: 'food5', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food5.png" },
      { id: 6, name: 'food6', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food6.png" },
      { id: 7, name: 'food7', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food7.png" },
      { id: 8, name: 'food8', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food8.png" },
      { id: 9, name: 'food9', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food9.png" },
      { id: 10, name: 'food10', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food10.jpg" },
      { id: 11, name: 'food11', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food11.jpg" },
      { id: 12, name: 'food12', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food12.jpeg" },
      { id: 13, name: 'food13', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food13.jpg" },
      { id: 14, name: 'food14', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food14.jpg" },
        { id: 15, name: 'food15', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food15.jpg" },
        { id: 16, name: 'food16', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food16.jpg" },
        { id: 17, name: 'food17', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food17.jpg" },
        { id: 18, name: 'food18', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food18.jpg" },
        { id: 19, name: 'food19', 
        subtitle: 'Egg, Rice, Sausage', 
        meal:'breakfast', 
        tags:['high protein', 'low carb'], 
        kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
        url:  "../../assets/images/food-list/food19.png" },
        { id: 20, name: 'food20', 
          subtitle: 'Egg, Rice, Sausage', 
          meal:'breakfast', 
          tags:['high protein', 'low carb'], 
          kcal: 333, protein: 34, carbs: 12, fiber: 5, fat: 16,
          url:  "../../assets/images/food-list/food20.jpg" }
        

    ];
    return {foods};
  }
}