import { Component, OnInit, Input } from '@angular/core';
import { ActivatedRoute, Params } from '@angular/router';
import { Http, Response, Headers, RequestOptions} from '@angular/http'
import { Observable } from 'rxjs/Rx'
import { Proposal } from './proposal'
import { ProposalService } from './proposal.service'
import {Angular2TokenService} from "angular2-token";

@Component({
    moduleId: module.id,
    selector: 'proposal-show',
    templateUrl: 'proposal-show.component.html',
    styleUrls: ['proposal-show.component.css'],
    providers: [ProposalService]
})

export class ProposalShowComponent implements OnInit {
    constructor(
        private route: ActivatedRoute,
        private proposalService: ProposalService,
        private http: Http,
        private authToken : Angular2TokenService        
    ){}

    @Input()
    proposal: Proposal;


    ngOnInit(): void {
        let proposalRequest = this.route.params
            .flatMap((params: Params) =>
            this.proposalService.getProposal(+params['id']));
        proposalRequest.subscribe(response => this.proposal = response.json());
            }
    deleteProposal(proposal){
        this.proposalService.deleteProposal(proposal.id)
            .subscribe(
                data => {return true},
                error => {
                    console.log("Error delete proposal");
                    return Observable.throw(error);
                }
            );
        
    }        
}