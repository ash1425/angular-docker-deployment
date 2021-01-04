import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {TestRouteComponent} from './test-route/test-route.component';
import {NotFoundComponent} from './not-found/not-found.component';

const routes: Routes = [
  {path: 'test', component: TestRouteComponent},
  {path: '**', component: NotFoundComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
