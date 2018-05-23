import { animate, state, style, transition, trigger, query, stagger, keyframes } from '@angular/animations';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

// Component transition animations
export const slideLeftAnimation =
  trigger('slideLeft', [
    state('*',
      style({
        opacity: 1,
        transform: 'translateX(0)',
        width: '100%'
      })
    ),
    transition(':enter', [
      style({
        opacity: 0,
        transform: 'translateX(100%)',
        overflowX: 'hidden'
      }),
      animate('0.2s ease-in')
    ]),
    transition(':leave', [
      animate('0.5s ease-out', style({
        opacity: 0,
        transform: 'translateX(100%)',
        overflowX: 'hidden'
      }))
    ])
  ]);

  export const slideRightAnimation =
  trigger('slideRight', [
    state('*',
      style({
        opacity: 1,
        transform: 'translateX(0)',
        width: '100%'
      })
    ),
    transition(':enter', [
      style({
        opacity: 0,
        transform: 'translateX(-100%)',
        overflowX: 'hidden'
      }),
      animate('0.2s ease-in')
    ]),
    transition(':leave', [
      animate('0.5s ease-out', style({
        opacity: 0,
        transform: 'translateX(-100%)',
        overflowX: 'hidden'
      }))
    ])
  ]);

  //Food-gallery Animation
  export const FadeInOutAnimation =
  trigger('fadeInOut', [
    transition('* => *', [

      query(':enter', style({ opacity: 0 }), {optional: true}),

      query(':enter', stagger('300ms', [
        animate('0.8s ease-in', keyframes([
          style({opacity: 0, transform: 'translateY(-75%)', offset: 0}),
          style({opacity: .5, transform: 'translateY(35px)',  offset: 0.3}),
          style({opacity: 1, transform: 'translateY(0)',     offset: 1.0}),
        ]))]), {optional: true})
    ])
  ]);

  //Food-detail transition animation
  export const zoomInAnimation =
  trigger('zoomIn', [
    state('*',
      style({
        opacity: 1,
        transform: 'scale(1)'
      })
    ),
    transition(':enter', [
      style({
        opacity: 0,
        transform: 'scale(0.4)'
      }),
      animate('0.2s ease-in')
    ]),
    transition(':leave', [
      animate('0.5s ease-out', style({
        opacity: 0,
        transform: 'scale(0)'
      }))
    ])
  ]);

  //Login and Register Modal Switch Animation
  export const switchModalAnimation =
  trigger('switchModal', [
    state('*',
      style({
        opacity: 1,
        transform: 'translateY(0)',
        width: '100%'
      })
    ),
    transition('register => login', [
      style({
        opacity: 0,
        transform: 'translateY(100%)'
      }),
      animate('0.3s ease-in')
    ]),
    transition('login => register',  [
      style({
        opacity: 0,
        transform: 'translateY(-100%)'
      }),
      animate('0.3s ease-out')
    ])
  ]);