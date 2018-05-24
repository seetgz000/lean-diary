import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

import { Observable } from 'rxjs/Observable';
import { of } from 'rxjs/observable/of';
import { catchError, map, tap } from 'rxjs/operators';
import { Subject }    from 'rxjs/Subject';

import { Food } from './foods/food';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({ providedIn: "root"})
export class FoodService {

  private foodsUrl = 'api/foods';

  constructor(private http: HttpClient) { }

  /** GET foods from the server */
  getFoods (): Observable<Food[]> {
    return this.http.get<Food[]>(this.foodsUrl)
    .pipe(
      catchError(this.handleError('getHeroes', []))
    );
  }

   /** GET hero by id. Return `undefined` when id not found */
   getFoodNo404<Data>(id: number): Observable<Food> {
    const url = `${this.foodsUrl}/?id=${id}`;
    return this.http.get<Food[]>(url)
      .pipe(
        map(heroes => heroes[0]), // returns a {0|1} element array
        tap(h => {
          const outcome = h ? `fetched` : `did not find`;
          console.log(`${outcome} hero id=${id}`);
        }),
        catchError(this.handleError<Food>(`getHero id=${id}`))
      );
  } 

  /** GET food by id. Will 404 if id not found */
  getFood(id: number): Observable<Food> {
    const url = `${this.foodsUrl}/${id}`;
    return this.http.get<Food>(url).pipe(
      catchError(this.handleError<Food>(`getHero id=${id}`))
    );
  }

   /**
   * Handle Http operation that failed.
   * Let the app continue.
   * @param operation - name of the operation that failed
   * @param result - optional value to return as the observable result
   */
  private handleError<T> (operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // TODO: better job of transforming error for user consumption
      console.log(`${operation} failed: ${error.message}`);

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }
}
